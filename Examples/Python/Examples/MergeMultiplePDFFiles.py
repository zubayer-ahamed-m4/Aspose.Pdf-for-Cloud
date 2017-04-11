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
name = "sample-input.pdf"
format = "pdf"
ffrom = 1
to = 2

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)

    #invoke Aspose.Pdf Cloud SDK API to split all or specific pages of a PDF
    response = pdfApi.PostSplitDocument(name, format=format, ffrom=ffrom, to=to)

    if response.Status == "OK":

        splitDocs = response.Result.Documents

        #download splitted pdf from storage
        for splitDoc in splitDocs:
            #splittedFileName = urlString.substring(urlString.lastIndexOf('/') + 1).split("\\?")[0].split("#")[0];
            urlString = splitDoc.Href
            splittedFileName = urlString.split('/')[-1]

            response = storageApi.GetDownload(Path=splittedFileName)
            outfilename = "c:/temp/" + splittedFileName
            with open(outfilename, 'wb') as f:
                        for chunk in response.InputStream:
                            f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
