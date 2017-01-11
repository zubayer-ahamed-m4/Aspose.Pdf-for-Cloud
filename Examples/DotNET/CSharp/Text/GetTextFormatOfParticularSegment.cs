using System;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;
using Com.Aspose.Storage.Api;

namespace Text
{
    class GetTextFormatOfParticularSegment
    {
        public static void Run()
        {
            // ExStart:1
            PdfApi pdfApi = new PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "segments.pdf";
            int pageNumber = 1;
            int fragmentNumber = 1;
            int segmentNumber = 1;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.PDF Cloud SDK API to get text format of particular segment
                TextFormatResponse apiResponse = pdfApi.GetSegmentTextFormat(fileName, pageNumber, fragmentNumber, segmentNumber, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    TextFormat segTextFormat = apiResponse.TextFormat;
                    Console.WriteLine("Segment Font Name - " + segTextFormat.FontName);
                    Console.WriteLine("Segment Font Size - " + segTextFormat.FontSize.Value);
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
