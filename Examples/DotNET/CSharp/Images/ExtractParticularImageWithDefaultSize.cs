using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Images
{
    class ExtractParticularImageWithDefaultSize
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String name = "SampleImage";
            String fileName = name + ".pdf";
            int pageNumber = 1;
            int imageNumber = 1;
            String format = "jpeg";
            int? width = null;
            int? height = null;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to extract particular image with default size
                ResponseMessage apiResponse = pdfApi.GetImageWithFormat(fileName, pageNumber, imageNumber, format, width, height, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("Extract a Particular Image from a PDF Page with Default Size, Done!");
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
