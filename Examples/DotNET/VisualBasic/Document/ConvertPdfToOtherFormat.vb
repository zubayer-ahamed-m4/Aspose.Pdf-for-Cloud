Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class ConvertPdfToOtherFormat
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "input.pdf"
            Dim format As [String] = "TIFF"
            Dim url As [String] = ""
            Dim outPath As [String] = ""
            Dim file As Byte() = System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName)

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to convert pdf to other formats
                Dim apiResponse As ResponseMessage = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF to TIFF, Done!")
                End If

                format = "DOC"
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF to DOC, Done!")
                End If

                format = "html"
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF to HTML, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
