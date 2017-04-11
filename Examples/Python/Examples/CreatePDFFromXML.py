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
name = "sample-xml.pdf"
templateFile = "sample.xsl"
dataFile = "sample.xml"
templateType = "xml"

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(templateFile, data_folder + templateFile)
    response = storageApi.PutCreate(dataFile, data_folder + dataFile)

    #invoke Aspose.Pdf Cloud SDK API to create PDF file from TIFF
    response = pdfApi.PutCreateDocument(name, templateFile=templateFile, templateType=templateType, dataFile=dataFile)


    if response.Status == "OK":
        #download pdf from cloud storage
        response = storageApi.GetDownload(Path=name)
        outfilename = "c:/temp/" + name
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
