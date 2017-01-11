using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;
using System.Collections.Generic;

namespace Form_Fields
{
    class UpdateFormField
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "sample-field.pdf";
            String fieldName = "textbox1";
            String storage = "";
            String folder = "";

            Field body = new Field();
            body.Name = "textbox1";
            body.Values = new List<string> { "Aspose" };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to update form field
                FieldResponse apiResponse = pdfApi.PutUpdateField(fileName, storage, folder, fieldName, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Field field = apiResponse.Field;
                    Console.WriteLine("Name" + field.Name);
                    Console.WriteLine("Value" + field.Values[0]);
                    Console.WriteLine("Update a Form Field in a PDF Document, Done!");
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
