Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Attachments
    Class DownloadSpecificAttachment
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim name As [String] = "SampleAttachment"
            Dim fileName As [String] = name + ".pdf"
            Dim attachmentIndex As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to download specific attachment from a pdf
                Dim apiResponse As ResponseMessage = pdfApi.GetDownloadDocumentAttachmentByIndex(fileName, attachmentIndex, storage, folder)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Download a specific Attachment from a PDF, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
