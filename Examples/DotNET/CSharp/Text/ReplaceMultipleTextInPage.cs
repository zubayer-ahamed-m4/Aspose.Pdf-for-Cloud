using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;
using System.Collections.Generic;

namespace Text
{
    class ReplaceMultipleTextInPage
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

            TextReplaceListRequest body = new TextReplaceListRequest();

            TextReplace tr1 = new TextReplace();
            tr1.OldValue = "Sample";
            tr1.NewValue = "Aspose Sample";

            TextReplace tr2 = new TextReplace();
            tr2.OldValue = "PDF";
            tr2.NewValue = "PDF Document";

            body.TextReplaces = new List<TextReplace> { tr1, tr2 };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to replace mutiple text in pdf page
                PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceTextList(fileName, pageNumber, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Replace Multiple Texts in a PDF Page, Done!");
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
