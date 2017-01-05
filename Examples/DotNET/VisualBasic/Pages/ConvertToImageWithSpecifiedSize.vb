Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Pages
    Class ConvertToImageWithSpecifiedSize
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim name As [String] = "sample-input"
            Dim fileName As [String] = name + ".pdf"
            Dim pageNumber As Integer = 1
            Dim format As [String] = "jpeg"
            Dim width As Integer = 300
            Dim height As Integer = 300
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to convert pdf page to image with specified size
                Dim apiResponse As ResponseMessage = pdfApi.GetPageWithFormat(fileName, pageNumber, format, width, height, storage, _
                    folder)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert a PDF Page to Image with Specified Size, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
