using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class SignPdfDoc
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-input-2.pdf";
            String signatureFileName = "pkc7-sample.pfx";            
            String storage = "";
            String folder = "";

            Signature body = new Signature();
            body.Authority = "Farooq Sheikh";
            body.Location = "Gojra";            
            body.Contact = "naeem.akram@aspose.com";
            body.Date = "06/20/2017 2:00:00.000 AM";
            body.FormFieldName = "Signature1";
            body.Password = "aspose";
            Rectangle rect = new Rectangle();
            rect.X = 100;
            rect.Y = 100;
            rect.Height = 100;
            rect.Width = 200;
            body.Rectangle = rect;
            body.SignaturePath = signatureFileName;
            body.SignatureType = "PKCS7";
            body.Visible = true;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(signatureFileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + signatureFileName));

                // Invoke Aspose.PDF Cloud SDK API to sign Pdf document                
                SaaSposeResponse apiResponse = pdfApi.PostSignDocument(fileName, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    // Download created pdf file
                    Com.Aspose.Storage.Model.ResponseMessage storageRes = storageApi.GetDownload(fileName, null, null);
                    // Save response stream to a file 
                    System.IO.File.WriteAllBytes(Common.GetDataDir() + "SignPdfDoc_out.pdf", storageRes.ResponseStream);    

                    Console.WriteLine("Sign PDF Documents, Done!");
                    Console.ReadKey();
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
            }
            // ExEnd:1
        }
    }
}
