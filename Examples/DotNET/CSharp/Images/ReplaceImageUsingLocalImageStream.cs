using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Images
{
    class ReplaceImageUsingLocalImageStream
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
            String imageFile = "aspose-cloud.png";
            String storage = "";
            String folder = "";
            byte[] file = System.IO.File.ReadAllBytes(Common.GetDataDir() + imageFile);

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to replace image using local image stream
                ImageResponse apiResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage, folder, file);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Replace Image in a PDF file using Local Image Stream, Done!");
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
