using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfFromRemoteServer
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String name = "123";
            String fileName = name + ".pdf";
            String format = "TIFF";
            String url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + fileName;
            String outPath = "";
            byte[] file = null; //System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName);

            try
            {                
                ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF from Remote Server to TIFF, Done!");
                }

                format = "DOC";
                // Invoke Aspose.PDF Cloud SDK API to pdf file to doc format
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF from Remote Server to DOC, Done!");
                }

                format = "HTML";
                // Invoke Aspose.PDF Cloud SDK API to convert pdf to HTML format
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF from Remote Server to HTML, Done!");
                    Console.ReadKey();
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("ERROR:" + ex.Message + "\n" + ex.StackTrace);
            }
            // ExEnd:1
        }
    }
}
