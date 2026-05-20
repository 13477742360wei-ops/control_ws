#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import numpy as np
import cv2
import pytesseract
import sys
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from text_recognition.srv import RecognizeText, RecognizeTextResponse

reload(sys)
sys.setdefaultencoding('utf-8')

class OCRService:
    def __init__(self):
        rospy.init_node('ocr_service', anonymous=True)
        self.bridge = CvBridge()
        
        # 预热 Tesseract（加载语言包）
        rospy.loginfo("正在加载 Tesseract 语言包...")
        pytesseract.get_tesseract_version()
        # 预识别一张空白图片，让 Tesseract 完成初始化
        dummy_img = np.zeros((100, 100), dtype=np.uint8)
        pytesseract.image_to_string(dummy_img, lang='chi_sim+eng')
        rospy.loginfo("Tesseract 已就绪")
        
        self.service = rospy.Service('/ocr/recognize', RecognizeText, self.handle_request)
        rospy.loginfo("OCR Service 已启动")
        
    def handle_request(self, req):
        start_time = rospy.get_time()
        
        try:
            # 图片转换
            cv_image = self.bridge.imgmsg_to_cv2(req.image, 'bgr8')
            gray = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
            
            # OCR 识别（已预热，不会重新加载）
            text_raw = pytesseract.image_to_string(gray, lang='chi_sim+eng')
            
            if isinstance(text_raw, str):
                text = text_raw.decode('utf-8')
            else:
                text = text_raw
            
            elapsed = rospy.get_time() - start_time
            rospy.loginfo("识别耗时: %.2f 秒" % elapsed)
            
            response = RecognizeTextResponse()
            response.text = text.strip()
            response.confidence = 0.9 if response.text else 0.0
            response.status = "success"
            return response
            
        except Exception as e:
            rospy.logerr("OCR 出错: %s" % str(e))
            return RecognizeTextResponse(text="", confidence=0.0, status="error")

if __name__ == '__main__':
    ocr = OCRService()
    rospy.spin()
