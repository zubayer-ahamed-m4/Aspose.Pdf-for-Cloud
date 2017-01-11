Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Text
    Class ReplaceTextInPage
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim pageNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Dim body As New TextReplace()

            body.OldValue = "Sample PDF"
            body.NewValue = "Sample Aspose PDF"

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to replace text in a pdf page
                Dim apiResponse As PageTextReplaceResponse = pdfApi.PostPageReplaceText(fileName, pageNumber, storage, folder, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Replace Text in a PDF Page, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
