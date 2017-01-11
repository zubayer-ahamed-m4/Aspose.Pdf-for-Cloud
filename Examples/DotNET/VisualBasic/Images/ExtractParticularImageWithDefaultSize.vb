Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Images
    Class ExtractParticularImageWithDefaultSize
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim name As [String] = "SampleImage"
            Dim fileName As [String] = name + ".pdf"
            Dim pageNumber As Integer = 1
            Dim imageNumber As Integer = 1
            Dim format As [String] = "jpeg"
            Dim width As System.Nullable(Of Integer) = Nothing
            Dim height As System.Nullable(Of Integer) = Nothing
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to extract particular image with default size
                Dim apiResponse As ResponseMessage = pdfApi.GetImageWithFormat(fileName, pageNumber, imageNumber, format, width, height, _
                    storage, folder)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Extract a Particular Image from a PDF Page with Default Size, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
