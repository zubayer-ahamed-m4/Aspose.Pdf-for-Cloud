using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Annotations
{
    class GetSpecificAnnotation
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample-Annotation.pdf";
            int pageNumber = 1;
            int annotationNumber = 1;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get specific annotation from pdf page
                AnnotationResponse apiResponse = pdfApi.GetPageAnnotation(fileName, pageNumber, annotationNumber, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Annotation annotation = apiResponse.Annotation;
                    Console.WriteLine("Annotation Content" + annotation.Contents);
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
