Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace WatermarksOrStamps
    Class AddImageStamp
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim imageFile As [String] = "aspose-cloud.png"
            Dim pageNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Dim body As New Stamp()
            body.FileName = imageFile
            body.Background = True
            body.Type = "Image"
            body.PageIndex = 0
            body.LeftMargin = 0.0
            body.Opacity = 0.5
            body.RightMargin = 0.0
            body.TopMargin = 0.0
            body.YIndent = 100.0
            body.XIndent = 100.0
            body.Zoom = 1.0
            body.TextState = Nothing
            body.Width = 300.0
            body.Height = 300.0

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))
                storageApi.PutCreate(imageFile, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + imageFile))

                ' Invoke Aspose.PDF Cloud SDK API to add image stamp to a pdf page
                Dim apiResponse As SaaSposeResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body)


                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Add Image Stamp (Watermark) to a PDF Page, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
