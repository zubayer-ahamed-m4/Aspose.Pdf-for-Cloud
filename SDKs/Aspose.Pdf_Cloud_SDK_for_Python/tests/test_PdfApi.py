import unittest
import os.path
import json
import inspect
import requests

import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import AnnotationResponse

import asposestoragecloud 
from asposestoragecloud.StorageApi import StorageApi

import random
import string

class TestAsposePdfCloud(unittest.TestCase):

    def setUp(self):

        with open('setup.json') as json_file:
            data = json.load(json_file)

        self.storageApiClient = asposestoragecloud.ApiClient.ApiClient(apiKey=str(data['app_key']),appSid=str(data['app_sid']),debug=True,apiServer=str(data['product_uri']))
        self.storageApi = StorageApi(self.storageApiClient)

        self.apiClient = asposepdfcloud.ApiClient.ApiClient(apiKey=str(data['app_key']),appSid=str(data['app_sid']),debug=True,apiServer=str(data['product_uri']))
        self.pdfApi = PdfApi(self.apiClient)

        self.output_path = str(data['output_location'])

    def testGetPageAnnotation(self):
        try:
            name = "Sample-Annotation.pdf"
            pageNumber =  1 
            annotationNumber = 1
            
            response = self.storageApi.PutCreate(name,'./data/' + name)
            response = self.pdfApi.GetPageAnnotation(name, pageNumber, annotationNumber)            

            self.assertIsInstance(response,AnnotationResponse.AnnotationResponse)
            self.assertEqual(response.Status,'OK')
        
        except ApiException as ex:
            print "Exception"
            print "Code: " + str(ex.code)
            print "Mesage: " + ex.message
            raise ex
    
            
if __name__ == '__main__':
    unittest.main()