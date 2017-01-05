using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Pages
{
    class ConvertToImageWithSpecifiedSize
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String name = "sample-input";
            String fileName = name + ".pdf";
            int pageNumber = 1;
            String format = "jpeg";
            int width = 300;
            int height = 300;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to convert pdf page to image with specified size
                ResponseMessage apiResponse = pdfApi.GetPageWithFormat(fileName, pageNumber, format, width, height, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert a PDF Page to Image with Specified Size, Done!");
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
