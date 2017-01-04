using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class MergePdfFiles
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-merged.pdf";
            String storage = "";
            String folder = "";
            MergeDocuments body = new MergeDocuments();
            body.List = new System.Collections.Generic.List<string> { "sample.pdf", "input.pdf" };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate("sample.pdf", "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + "sample.pdf"));
                storageApi.PutCreate("input.pdf", "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + "input.pdf"));

                // Invoke Aspose.PDF Cloud SDK API to merge pdf files
                DocumentResponse apiResponse = pdfApi.PutMergeDocuments(fileName, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Merge Multiple PDF Files, Done!");
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
