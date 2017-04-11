import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException

import asposestoragecloud
from asposestoragecloud.StorageApi import StorageApi
from asposestoragecloud.StorageApi import ResponseMessage

apiKey = "XXXXX" #sepcify App Key
appSid = "XXXXX" #sepcify App SID
apiServer = "http://api.aspose.com/v1.1"
data_folder = "../../data/"

#Instantiate Aspose Storage API SDK
storage_apiClient = asposestoragecloud.ApiClient.ApiClient(apiKey, appSid, True)
storageApi = StorageApi(storage_apiClient)
#Instantiate Aspose Pdf API SDK
api_client = asposepdfcloud.ApiClient.ApiClient(apiKey, appSid, True)
pdfApi = PdfApi(api_client);

#set input file name
name = "Sample-Annotation.pdf"
pageNumber = 1

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to get all annotations from a PDF page
    response = pdfApi.GetPageAnnotations(name, pageNumber)

    if response.Status == "OK":
        count = len(response.Annotations.Links)
        print "Annotation Count :: " + str(count)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message

