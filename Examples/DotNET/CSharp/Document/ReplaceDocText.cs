using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ReplaceDocText
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "test.pdf";
            string storage = null;
            string folder = null;

            Com.Aspose.PDF.Model.TextReplace body = new Com.Aspose.PDF.Model.TextReplace();
            body.OldValue = "Sample PDF";
            body.NewValue = "This is the new test added by IA";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate( fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to replace pdf text
                DocumentTextReplaceResponse apiResponse = pdfApi.PostDocumentReplaceText(fileName, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Replace PDF Document Text, Done!");
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
