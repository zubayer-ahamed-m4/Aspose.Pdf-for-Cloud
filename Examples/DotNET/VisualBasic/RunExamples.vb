Imports System.Collections.Generic
Imports System.IO
Imports System.Configuration
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Document
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Pages
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Document_Properties
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Form_Fields
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Images
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Text
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Annotations
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Bookmarks
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Links
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.WatermarksOrStamps
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Attachments
Module RunExamples

    Sub Main()
        Console.WriteLine("Open RunExamples.vb. " & vbLf & "In Main() method uncomment the example that you want to run.")
        Console.WriteLine("=====================================================")

        ' Uncomment the one you want to try out

        '''' =====================================================
        '''' =====================================================
        '''' Document
        '''' =====================================================
        '''' =====================================================

        'CreateEmptyPdf.Run()
        CreateFromHTML.Run()
        'CreateFromXML.Run()
        'ConvertPdfFromImages.Run()
        'ConvertPdfToOtherFormat.Run()
        'MergePdfFiles.Run()
        'SplitPdfFiles.Run()
        'SignPdfDoc.Run()
        'AppendPdfFiles.Run()
        'CreatePdfFromJPEG.Run()
        'CreatePdfFromSVG.Run()
        'CreatePdfFromTIFF.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Pages
        '''' =====================================================
        '''' =====================================================

        'AddNewPage.Run()
        'DeletePage.Run()
        'MovePages.Run()
        'GetPageCount.Run()
        'ConvertToImageWithDefaultSize.Run()
        'ConvertToImageWithSpecifiedSize.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Document-Properties
        '''' =====================================================
        '''' =====================================================

        'SetSingleDocumentProperty.Run();
        'GetAllProperties.Run();
        'RemoveAllProperties.Run();  
        'GetParticularProperty.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Form-Fields
        '''' =====================================================
        '''' =====================================================

        'GetAllFields.Run()
        'GetParticularField.Run()
        'GetFieldCount.Run()
        'UpdateFormField.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Images
        '''' =====================================================
        '''' =====================================================

        'ExtractParticularImageWithDefaultSize.Run()
        'ExtractParticularImageWithSpecifiedSize.Run()
        'GetImageCount.Run()
        'ReplaceImageUsingImageFile.Run()
        'ReplaceImageUsingLocalImageStream.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Text
        '''' =====================================================
        '''' =====================================================

        'GetTextItemsFromDoc.Run()
        'GetTextItemsFromPage.Run()
        'GetTextItemsFromParticularFragment.Run()
        'GetFragmentCountFromPage.Run()
        'GetSegmentCountFromPdfFragment.Run()
        'GetTextFormatOfFragment.Run()
        'GetTextFormatOfParticularSegment.Run()
        'ReplaceTextInPage.Run()
        'ReplaceTextInFile.Run()
        'ReplaceMultipleTextInPage.Run()
        'ReplaceMultipleTextInPdf.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Annotations
        '''' =====================================================
        '''' =====================================================

        'GetAllAnnotationsFromPage.Run()
        'GetCountFromPage.Run()
        'GetSpecificAnnotation.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Bookmarks
        '''' =====================================================
        '''' =====================================================

        'GetAllBookmarks.Run()
        'GetSpecificBookmark.Run()
        'GetBookmarkCount.Run()


        '''' =====================================================
        '''' =====================================================
        '''' Links
        '''' =====================================================
        '''' =====================================================

        'GetAllLinks.Run()
        'GetSpecificLink.Run()
        'GetLinkCount.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Attachments
        '''' =====================================================
        '''' =====================================================

        'GetAllAttachments.Run()
        'GetSpecificAttachment.Run()
        'GetAttachmentCount.Run()
        'DownloadSpecificAttachment.Run()

        '''' =====================================================
        '''' =====================================================
        '''' WatermarksOrStamps
        '''' =====================================================
        '''' =====================================================

        'AddTextStamp.Run()
        'AddImageStamp.Run()
        'AddPdfPageAsStamp.Run()
        'AddPageNumberStamp.Run()

        ' Stop before exiting
        Console.WriteLine(vbLf & vbLf & "Program Finished. Press any key to exit....")
        Console.ReadKey()

    End Sub

End Module

