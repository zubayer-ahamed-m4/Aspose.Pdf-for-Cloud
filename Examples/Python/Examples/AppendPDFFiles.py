import asposepdfcloud
from asposepdfcloud.PdfApi import PdfApi
from asposepdfcloud.PdfApi import ApiException
from asposepdfcloud.models import Signature
from asposepdfcloud.models import Rectangle

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
signatureFileName = "pkc7-sample.pfx"
pageNumber = 1

body = Signature.Signature()
body.Authority =  "Farooq Sheikh"
body.Location = "Rawalpindi"
body.Contact =  "farooq.sheikh@aspose.com"
body.Date =  "06/24/2015 2:00:00.000 AM"
body.FormFieldName = "Signature1"
body.Password = "aspose"

rect = Rectangle.Rectangle();
rect.X = 100
rect.Y = 100
rect.Height = 100
rect.Width = 200
body.Rectangle = rect
body.SignaturePath = signatureFileName
body.SignatureType = "PKCS7"
body.Visible = True


try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)
    response = storageApi.PutCreate(signatureFileName, data_folder + signatureFileName)

    #invoke Aspose.Pdf Cloud SDK API to sign PDF document
    response = pdfApi.PostSignPage(name, pageNumber, body)


    if response.Status == "OK":
        #download signed pdf from response
        response = storageApi.GetDownload(Path=name)
        outfilename = "c:/temp/" + name
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message

