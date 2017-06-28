using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfFromImages
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
          
            String fileName =  "Sample.pdf";
            String format = "html";
            String storage = "";
            String folder = "";
            String outPath = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to convert pdf to images
                ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, "outFile");

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert PDF to TIFF, Done!");
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
