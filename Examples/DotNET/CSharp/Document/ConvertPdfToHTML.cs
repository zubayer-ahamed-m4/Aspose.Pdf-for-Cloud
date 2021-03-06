﻿using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Document
{
    class ConvertPdfToHTML
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
          
            String fileName = "Lenovo_Tablet_2_Datasheet.pdf";
            String format = "html";
            String storage = "";
            String folder = "";
            String outPath = "Lenovo_Tablet_2_Datasheet.zip";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to convert pdf to HTML
                ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

                if (apiResponse != null)
                {
                    // Download converted HTML file
                    Com.Aspose.Storage.Model.ResponseMessage storageRes = storageApi.GetDownload(outPath, null, storage);

                    // Save response stream to a file 
                    System.IO.File.WriteAllBytes(Common.GetDataDir() + outPath, storageRes.ResponseStream);

                    Console.WriteLine("Convert PDF to HTML, Done!");
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
