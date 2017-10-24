using System;
using System.Collections.Generic;
using System.IO;
using System.Configuration;
using Document;
using Pages;
using Document_Properties;
using Form_Fields;
using Images;
using Text;
using Annotations;
using Bookmarks;
using Links;
using Attachments;
using WatermarksOrStamps;

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
            //ConvertPdfToOtherFormat.Run();
            ConvertPdfToOtherFormatWithoutStorage.Run();
            //MergePdfFiles.Run();
            //SplitPdfFiles.Run();
            //SignPdfDoc.Run();
            //AppendPdfFiles.Run();
            //CreatePdfFromJPEG.Run();
            //CreatePdfFromSVG.Run();
            //CreatePdfFromTIFF.Run();
            //ReplaceDocText.Run();
            //ReplaceDocTextList.Run();

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
            //GetWordsCount.Run();
            //GetPageInformation.Run();
            //ReplacePageText.Run();
            //ReplacePageTextList.Run();


            //// =====================================================
            //// =====================================================
            //// Document-Properties
            //// =====================================================
            //// =====================================================

            //SetSingleDocumentProperty.Run();
            //GetAllProperties.Run();
            //RemoveAllProperties.Run();  
            //GetParticularProperty.Run();

            //// =====================================================
            //// =====================================================
            //// Form-Fields
            //// =====================================================
            //// =====================================================

            //GetAllFields.Run();
            //GetParticularField.Run();
            //GetFieldCount.Run();
            //UpdateFormField.Run();
            //CreateField.Run();
            //CreateSignatureField.Run();

            //// =====================================================
            //// =====================================================
            //// Images
            //// =====================================================
            //// =====================================================

            //ExtractParticularImageWithDefaultSize.Run();
            //ExtractParticularImageWithSpecifiedSize.Run();
            //GetImageCount.Run();
            //ReplaceImageUsingImageFile.Run();
            //ReplaceImageUsingLocalImageStream.Run();
            //GetImageWithFormat.Run();

            //// =====================================================
            //// =====================================================
            //// Text
            //// =====================================================
            //// =====================================================

            //GetTextItemsFromDoc.Run();     
            //GetTextItemsFromPage.Run();
            //GetTextItemsFromParticularFragment.Run();
            //GetFragmentCountFromPage.Run();
            //GetSegmentCountFromPdfFragment.Run();
            //GetTextFormatOfFragment.Run();
            //GetTextFormatOfParticularSegment.Run();
            //ReplaceTextInPage.Run();
            //ReplaceTextInFile.Run();
            //ReplaceMultipleTextInPage.Run();
            //ReplaceMultipleTextInPdf.Run();

            //// =====================================================
            //// =====================================================
            //// Annotations
            //// =====================================================
            //// =====================================================

            //GetAllAnnotationsFromPage.Run(); 
            //GetCountFromPage.Run();
            //GetSpecificAnnotation.Run();

            //// =====================================================
            //// =====================================================
            //// Bookmarks
            //// =====================================================
            //// =====================================================

            //GetAllBookmarks.Run();
            //GetSpecificBookmark.Run();
            //GetBookmarkCount.Run();

            //// =====================================================
            //// =====================================================
            //// Links
            //// =====================================================
            //// =====================================================

            //GetAllLinks.Run();
            //GetSpecificLink.Run();
            //GetLinkCount.Run();

            //// =====================================================
            //// =====================================================
            //// Attachments
            //// =====================================================
            //// =====================================================

            //GetAllAttachments.Run();
            //GetSpecificAttachment.Run();
            //GetAttachmentCount.Run();
            //DownloadSpecificAttachment.Run();

            //// =====================================================
            //// =====================================================
            //// WatermarksOrStamps
            //// =====================================================
            //// =====================================================

            //AddTextStamp.Run();
            //AddImageStamp.Run();
            //AddPdfPageAsStamp.Run();
            //AddPageNumberStamp.Run();
            
            // Stop before exiting
            Console.WriteLine("\n\nProgram Finished. Press any key to exit....");
            Console.ReadKey();
        }
        
    }
}
