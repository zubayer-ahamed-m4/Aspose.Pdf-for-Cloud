import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import Field

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
fieldName = "textbox1"

body = Field.Field()
body.Name = "textbox1"
body.Values = ["Aspose"]

try:

    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to update form fields in a PDF document
    response = pdfApi.PutUpdateField(name, fieldName, body)

    if response.Status == "OK":
        field = response.Field
        print "Name :: " + field.Name
        print "Value :: " + field.Values[0]

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
