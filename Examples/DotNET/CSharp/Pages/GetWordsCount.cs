using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Pages
{
    class GetWordsCount
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-input.pdf";
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get words count per page from pdf document
                WordCountResponse apiResponse = pdfApi.GetWordsPerPage(fileName, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    foreach (PageWordCount PageWordCount in apiResponse.WordsPerPage.List)
                    {
                        Console.WriteLine("Page Number :: " + PageWordCount.PageNumber + " Total Words :: " + PageWordCount.Count);                        
                    }                   
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
