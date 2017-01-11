Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api
Imports System.Collections.Generic

Namespace Text
    Class ReplaceMultipleTextInPage
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim pageNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Dim body As New TextReplaceListRequest()

            Dim tr1 As New TextReplace()
            tr1.OldValue = "Sample"
            tr1.NewValue = "Aspose Sample"

            Dim tr2 As New TextReplace()
            tr2.OldValue = "PDF"
            tr2.NewValue = "PDF Document"

            body.TextReplaces = New List(Of TextReplace)() From { _
                tr1, _
                tr2 _
            }

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to replace mutiple text in pdf page
                Dim apiResponse As PageTextReplaceResponse = pdfApi.PostPageReplaceTextList(fileName, pageNumber, storage, folder, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Replace Multiple Texts in a PDF Page, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
