using System;
using System.Collections.Generic;
using System.IO;
using System.Configuration;
using Document;
using Pages;
using Document_Properties;

namespace CSharp
{
    class RunExamples
    {
        [STAThread]
        public static void Main()
        {
            Console.WriteLine("Open RunExamples.cs. \nIn Main() method uncomment the example that you want to run.");
            Console.WriteLine("=====================================================");

            // Uncomment the one you want to try out

            //// =====================================================
            //// =====================================================
            //// Document
            //// =====================================================
            //// =====================================================

            //CreateEmptyPdf.Run();
            //CreateFromHTML.Run();
            //CreateFromXML.Run();  
            //ConvertPdfFromImages.Run();
            //ConvertPdfToOtherFormat.Run();
            //MergePdfFiles.Run();
            //SplitPdfFiles.Run();
            //SignPdfDoc.Run();
            //AppendPdfFiles.Run();
            //CreatePdfFromJPEG.Run();
            //CreatePdfFromSVG.Run();
            //CreatePdfFromTIFF.Run();

            //// =====================================================
            //// =====================================================
            //// Pages
            //// =====================================================
            //// =====================================================

            //AddNewPage.Run();
            //DeletePage.Run();
            //MovePages.Run();
            //GetPageCount.Run();
            //ConvertToImageWithDefaultSize.Run();
            //ConvertToImageWithSpecifiedSize.Run();

            //// =====================================================
            //// =====================================================
            //// Document-Properties
            //// =====================================================
            //// =====================================================

            //SetSingleDocumentProperty.Run();
            //GetAllProperties.Run();
            //RemoveAllProperties.Run();  
            GetParticularProperty.Run();
            
            // Stop before exiting
            Console.WriteLine("\n\nProgram Finished. Press any key to exit....");
            Console.ReadKey();
        }
        
    }
}
