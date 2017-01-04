using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class AppendPdfFiles
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample.pdf";
            String appendFile = null;
            int startPage = 2;
            int endPage = 3;
            String storage = "";
            String folder = "";

            String appendFileName = "sample-input.pdf";
            AppendDocument body = new AppendDocument();
            body.Document = appendFileName;
            body.StartPage = 2;
            body.EndPage = 3;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(appendFileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + appendFileName));

                // Invoke Aspose.PDF Cloud SDK API to append pdf file
                DocumentResponse apiResponse = pdfApi.PostAppendDocument(fileName, appendFile, startPage, endPage, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Append PDF Files, Done!");
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
