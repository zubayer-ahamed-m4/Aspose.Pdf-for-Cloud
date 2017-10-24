using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfToSpecifiedFormat
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
          
            String fileName =  "Sample.pdf";
            String format = "doc";
            String storage = "";
            String folder = "";
            String outPath = "Sample.doc";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to convert pdf to other format
                ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

                if (apiResponse != null)
                {
                    Console.WriteLine("Converted PDF to desired format!");
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
