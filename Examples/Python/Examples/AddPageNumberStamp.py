import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import Stamp

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
name = "sample-input.pdf"
pageNumber = 1

body = Stamp.Stamp()

body.PageIndex = 1
body.Value = "Page # of 2"
body.Type = "PageNumber"
body.LeftMargin = 0.0
body.Opacity = 0.5
body.RightMargin = 0.0
body.TopMargin = 0.0
body.YIndent = 100.0
body.XIndent = 100.0
body.Zoom = 1.0
body.Width = 300.0
body.Height = 300.0
body.StartingNumber = 1

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to insert page number stamp to a PDF page
    response = pdfApi.PutPageAddStamp(name, pageNumber, body)

    if response.Status == "OK":
        #download updated pdf from cloud storage
        response = storageApi.GetDownload(Path=name)
        outfilename = "c:/temp/" + name
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
