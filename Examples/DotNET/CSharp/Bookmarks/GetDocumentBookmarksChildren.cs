using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Bookmarks
{
    class GetDocumentBookmarksChildren
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "Sample-Bookmark.pdf";
            string bookmarkPath = null;
            string storage = null;
            string folder = null; 

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get bookmarks children
                ResponseMessage apiResponse = pdfApi.GetDocumentBookmarksChildren(fileName, bookmarkPath, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {                   
                    Console.WriteLine("Get Bookmarks Children from a PDF,Done!");
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
