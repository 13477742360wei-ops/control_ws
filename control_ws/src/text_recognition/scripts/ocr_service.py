#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import cv2
import pytesseract
import sys
import numpy as np
import os
import re
from text_recognition.srv import RecognizeText, RecognizeTextResponse

reload(sys)
sys.setdefaultencoding('utf-8')

class OCRService:
    def __init__(self):
        rospy.init_node('ocr_service', anonymous=True)
        
        # 预热 Tesseract
        rospy.loginfo("正在加载 Tesseract 语言包...")
        dummy_img = np.zeros((100, 100), dtype=np.uint8)
        pytesseract.image_to_string(dummy_img, lang='chi_sim+eng')
        rospy.loginfo("Tesseract 已就绪")
        
        # 提供服务
        self.service = rospy.Service('/board2/decode', RecognizeText, self.handle_request)
        rospy.loginfo("OCR Service 已启动")
    
    def extract_wait_seconds(self, text):
        """从文字中提取等待秒数，返回最后一个数字"""
        if not text:
            return 0
        
        # 移除所有空白字符
        text = re.sub(r'\s+', ' ', text)
        
        # 查找所有数字
        numbers = re.findall(r'(\d+)', text)
        
        if numbers:
            seconds = int(numbers[-1])
            rospy.loginfo("提取到数字: %s → 等待 %d 秒" % (numbers, seconds))
            return seconds
        
        return 0
    
    def handle_request(self, req):
        response = RecognizeTextResponse()
        response.lab_open = True
        response.wait_seconds = 0
        response.speech_text = ""
        
        if not req.image_path or not os.path.exists(req.image_path):
            rospy.logwarn("图片不存在: %s" % req.image_path)
            return response
        
        try:
            cv_image = cv2.imread(req.image_path)
            if cv_image is None:
                rospy.logerr("无法读取图片: %s" % req.image_path)
                return response
            
            gray = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
            text_raw = pytesseract.image_to_string(gray, lang='chi_sim+eng')
            
            if isinstance(text_raw, str):
                text = text_raw.decode('utf-8')
            else:
                text = text_raw
            
            response.speech_text = text.strip()
            response.wait_seconds = self.extract_wait_seconds(response.speech_text)
            
            rospy.loginfo("识别: '%s' → 等待 %d 秒" % (response.speech_text, response.wait_seconds))
            
        except Exception as e:
            rospy.logerr("OCR 出错: %s" % str(e))
        
        return response

if __name__ == '__main__':
    try:
        OCRService()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
