using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace WatermarksOrStamps
{
    class AddPageNumberStamp
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
            body.Background = true;
            body.Value = "Page # of 2";
            body.Type = "PageNumber";
            body.PageIndex = 0;
            body.LeftMargin = 0.0;
            body.Opacity = 0.5;
            body.RightMargin = 0.0;
            body.TopMargin = 0.0;
            body.YIndent = 100.0;
            body.XIndent = 100.0;
            body.Zoom = 1.0;
            body.TextState = null;
            body.Width = 300.0;
            body.Height = 300.0;
            body.StartingNumber = 1;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to add page number stamp to a pdf page
                SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null)
                {
                    Console.WriteLine("Add Page Number Stamp to a PDF Page, Done!");
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
