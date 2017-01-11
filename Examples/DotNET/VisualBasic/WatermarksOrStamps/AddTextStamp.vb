Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace WatermarksOrStamps
    Class AddTextStamp
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim pageNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Dim body As New Stamp()
            body.Value = "Aspose.com"
            body.Background = True
            body.Type = "Text"

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to add text stamp to a pdf page
                Dim apiResponse As SaaSposeResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Add Text Stamp (Watermark) to a PDF Page, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
