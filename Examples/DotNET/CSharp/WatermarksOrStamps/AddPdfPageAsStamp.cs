using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace WatermarksOrStamps
{
    class AddPdfPageAsStamp
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-input.pdf";
            String pdfName = "Sample.pdf";
            int pageNumber = 1;
            String storage = "";
            String folder = "";

            Stamp body = new Stamp();
            body.FileName = pdfName;
            body.Background = true;
            body.Type = "Image";
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

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(pdfName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + pdfName));

                // Invoke Aspose.PDF Cloud SDK API to add pdf page as stamp to a pdf page
                SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null)
                {
                    Console.WriteLine("Add PDF Page as Stamp (Watermark) to a PDF Page, Done!");
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
