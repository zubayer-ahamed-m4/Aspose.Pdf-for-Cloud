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
name = "sample-field.pdf"

try:

    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to get all of the form fields from the PDF document
    response = pdfApi.GetFields(name)

    if response.Status == "OK":
        fields = response.Fields.List
        for field in fields:
            print "Name" + field.Name
            print "Value" + field.Values[0]

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
