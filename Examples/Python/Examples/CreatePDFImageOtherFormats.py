import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import AppendDocument

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
fileName = "Sample"
name = fileName + ".pdf"
format = "tiff"

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to convert PDF to TIFF
    response = pdfApi.GetDocumentWithFormat(name, format)

    if response.Status == "OK":
        #save converted format file from response
        outfilename = "c:/temp/" + fileName + "." + format
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

    format = "DOC";

    #invoke Aspose.Pdf Cloud SDK API to convert PDF to DOC
    response = pdfApi.GetDocumentWithFormat(name, format)
    if response.Status == "OK":
        #save converted format file from response
        outfilename = "c:/temp/" + fileName + "." + format
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

    format = "html";

    #invoke Aspose.Pdf Cloud SDK API to convert PDF to DOC
    response = pdfApi.GetDocumentWithFormat(name, format)
    if response.Status == "OK":
        #save converted format file from response
        outfilename = "c:/temp/" + fileName + "." + ".zip"
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)


except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message

