import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import TextReplaceListRequest
from asposepdfcloud.models import TextReplace


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

body = TextReplaceListRequest.TextReplaceListRequest()

tr1 = TextReplace.TextReplace()
tr1.OldValue = "Sample"
tr1.NewValue = "Sample Aspose"

tr2 = TextReplace.TextReplace()
tr2.OldValue = "PDF"
tr2.NewValue = "PDF Document"

body.TextReplaces = [tr1, tr2]

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to replace multiple texts in a PDF page
    response = pdfApi.PostPageReplaceTextList(name, pageNumber, body)

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
