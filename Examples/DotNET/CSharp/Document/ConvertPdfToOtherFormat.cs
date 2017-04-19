using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfToOtherFormat
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample.pdf";
            String format = "html";
            String url = "";
            String outPath = "";
            byte[] file = System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName);

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

               
                // Invoke Aspose.PDF Cloud SDK API to convert pdf to other formats
                ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF to TIFF, Done!");
                }

                format = "doc";                
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF to DOC, Done!");
                }

                format = "html";
                 apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF to HTML, Done!");
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
