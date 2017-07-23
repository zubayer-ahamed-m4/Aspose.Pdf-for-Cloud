using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ReplaceDocTextList
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "test.pdf";
            string storage = null;
            string folder = null;

            Com.Aspose.PDF.Model.TextReplaceListRequest body = new Com.Aspose.PDF.Model.TextReplaceListRequest();
            Com.Aspose.PDF.Model.TextReplace tr = new Com.Aspose.PDF.Model.TextReplace();
            tr.NewValue = "This will be the new text";
            body.TextReplaces = new System.Collections.Generic.List<Com.Aspose.PDF.Model.TextReplace> { tr };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate( fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to replace pdf text list
                DocumentTextReplaceResponse apiResponse = pdfApi.PostDocumentReplaceTextList(fileName, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Replace PDF Document Text List, Done!");
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
