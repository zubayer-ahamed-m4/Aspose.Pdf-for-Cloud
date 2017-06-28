using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Pages
{
    class ReplacePageText
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "test.pdf";
            int? pageNumber = 1;
            string storage = null;
            string folder = null;
            Com.Aspose.PDF.Model.TextReplace body = new Com.Aspose.PDF.Model.TextReplace();
            body.NewValue = "This is the latest text added by IA";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to replace pdf document page text
                PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceText(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {                    
                    Console.WriteLine("PDF Document Page Replace Text, Done!");
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
