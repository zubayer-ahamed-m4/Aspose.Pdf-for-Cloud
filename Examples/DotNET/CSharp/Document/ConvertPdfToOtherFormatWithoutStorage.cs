using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfToOtherFormatWithoutStorage
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample.pdf";
            String format = "doc";
            String url = "";
            String outPath = "Sample_out.doc";
            byte[] file = System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName);

            try
            {
                // Invoke Aspose.PDF Cloud SDK API to convert pdf to other formats
                ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, "", file);

                if (apiResponse != null && apiResponse.Status.Equals("OK", StringComparison.InvariantCultureIgnoreCase))
                {
                    // Save response stream to a file 
                    System.IO.File.WriteAllBytes(Common.GetDataDir() + outPath, apiResponse.ResponseStream);

                    Console.WriteLine("Convert PDF to other Format Without Storage, Done!");
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
