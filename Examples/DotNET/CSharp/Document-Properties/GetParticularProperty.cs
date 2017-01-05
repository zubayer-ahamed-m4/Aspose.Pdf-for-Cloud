using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document_Properties
{
    class GetParticularProperty
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample-Annotation.pdf";
            String propertyName = "Creator";
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get particular document property
                DocumentPropertyResponse apiResponse = pdfApi.GetDocumentProperty(fileName, propertyName, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    DocumentProperty docProp = apiResponse.DocumentProperty;
                    Console.WriteLine(docProp.Name + " :: " + docProp.Value);
                    Console.WriteLine("Get a Particular Document Property from a PDF, Done!");
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
