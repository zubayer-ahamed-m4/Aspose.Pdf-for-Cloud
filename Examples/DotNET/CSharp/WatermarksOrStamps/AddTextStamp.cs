using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace WatermarksOrStamps
{
    class AddTextStamp
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-input.pdf";
            int pageNumber = 1;
            String storage = "";
            String folder = "";
            Stamp body = new Stamp();
            body.Value = "Aspose.com";
            body.Background = true;
            body.Type = "Text";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to add text stamp to a pdf page
                SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null)
                {
                    Console.WriteLine("Add Text Stamp (Watermark) to a PDF Page, Done!");
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
