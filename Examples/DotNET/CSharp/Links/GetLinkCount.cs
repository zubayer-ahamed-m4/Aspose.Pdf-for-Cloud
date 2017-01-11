using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Links
{
    class GetLinkCount
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample-Bookmark.pdf";
            int pageNumber = 1;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get link count from a pdf page
                LinkAnnotationsResponse apiResponse = pdfApi.GetPageLinkAnnotations(fileName, pageNumber, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    LinkAnnotations linkAnnotations = apiResponse.Links;
                    int count = linkAnnotations.List.Count;
                    Console.WriteLine("Count :: " + count);
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
