Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Images
    Class ReplaceImageUsingImageFile
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim name As [String] = "SampleImage"
            Dim fileName As [String] = name + ".pdf"
            Dim pageNumber As Integer = 1
            Dim imageNumber As Integer = 1
            Dim imageFile As [String] = "aspose-cloud.png"
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Dim file As Byte() = System.IO.File.ReadAllBytes(Common.GetDataDir() + imageFile)

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to replace image using image file
                Dim apiResponse As ImageResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage, folder, _
                    file)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Replace Image in a PDF File using Image File, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
