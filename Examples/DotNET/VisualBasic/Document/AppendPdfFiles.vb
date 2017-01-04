Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class AppendPdfFiles
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample.pdf"
            Dim appendFile As [String] = Nothing
            Dim startPage As Integer = 2
            Dim endPage As Integer = 3
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Dim appendFileName As [String] = "sample-input.pdf"
            Dim body As New AppendDocument()
            body.Document = appendFileName
            body.StartPage = 2
            body.EndPage = 3

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))
                storageApi.PutCreate(appendFileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + appendFileName))

                ' Invoke Aspose.PDF Cloud SDK API to append pdf file
                Dim apiResponse As DocumentResponse = pdfApi.PostAppendDocument(fileName, appendFile, startPage, endPage, storage, folder, _
                    body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Append PDF Files, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
