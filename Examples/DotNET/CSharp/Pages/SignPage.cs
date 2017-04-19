using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Pages
{
    class SignPage
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "sample-input.pdf";
            int? pageNumber = 1;
            string storage = null;
            string folder = null;

            Com.Aspose.PDF.Model.Signature body = new Com.Aspose.PDF.Model.Signature();
            body.Authority = "Authority";
            body.Contact = "naeem.akram@aspose.com";
            body.Date = "18-4-2016";
            body.FormFieldName = "Signature1";
            body.Location = "Gojra";
            body.Password = "aspose";
            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 100;
            rect.Y = 100;
            rect.Height = 100;
            rect.Width = 200;
            body.Rectangle = rect;
            body.SignaturePath = "pkc7-sample.pfx";
            body.SignatureType = "PKCS7";
            body.Visible = true;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(body.SignaturePath, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + body.SignaturePath)); 

                // Invoke Aspose.PDF Cloud SDK API to sign pdf page
                SaaSposeResponse apiResponse = pdfApi.PostSignPage(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("Ok"))
                {                 
                    Console.WriteLine("Sign PDF Document Page, Done!");
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
