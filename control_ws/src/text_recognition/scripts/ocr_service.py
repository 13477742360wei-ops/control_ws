#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import cv2
import pytesseract
import sys
import numpy as np
import os
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
        rospy.loginfo("OCR Service 已启动，等待请求...")
        
    def handle_request(self, req):
        """
        接收图片路径，返回识别结果
        req.image_path: 图片文件路径
        """
        response = RecognizeTextResponse()
        response.lab_open = True
        response.wait_seconds = 0
        response.speech_text = ""
        
        # 检查路径
        if not req.image_path:
            rospy.logwarn("未提供图片路径")
            response.speech_text = ""
            return response
        
        if not os.path.exists(req.image_path):
            rospy.logerr("图片不存在: %s" % req.image_path)
            response.speech_text = ""
            return response
        
        try:
            # 读取图片
            cv_image = cv2.imread(req.image_path)
            if cv_image is None:
                rospy.logerr("无法读取图片: %s" % req.image_path)
                return response
            
            # 预处理
            gray = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
            
            # OCR 识别
            text_raw = pytesseract.image_to_string(gray, lang='chi_sim+eng')
            
            if isinstance(text_raw, str):
                text = text_raw.decode('utf-8')
            else:
                text = text_raw
            
            response.speech_text = text.strip()
            rospy.loginfo("识别结果: '%s'" % response.speech_text)
            
        except Exception as e:
            rospy.logerr("OCR 出错: %s" % str(e))
            response.speech_text = ""
        
        return response

if __name__ == '__main__':
    ocr = OCRService()
    rospy.spin()
