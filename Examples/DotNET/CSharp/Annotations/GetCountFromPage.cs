using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Annotations
{
    class GetCountFromPage
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample-Annotation.pdf";
            int pageNumber = 1;
            String storage = "";
            String folder = "";


            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get annotations count from Pdf page
                AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    int count = apiResponse.Annotations.Links.Count;
                    Console.WriteLine("Annotation Count :: " + count);
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
