Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class ConvertPdfFromRemoteServer
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim name As [String] = "123"
            Dim fileName As [String] = name + ".pdf"
            Dim format As [String] = "TIFF"
            Dim url As [String] = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + fileName
            Dim outPath As [String] = ""
            Dim file As Byte() = Nothing
            'System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName);
            Try
                Dim apiResponse As ResponseMessage = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF from Remote Server to TIFF, Done!")
                End If

                format = "DOC"
                ' Invoke Aspose.PDF Cloud SDK API to pdf file to doc format
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF from Remote Server to DOC, Done!")
                End If

                format = "HTML"
                ' Invoke Aspose.PDF Cloud SDK API to convert pdf to HTML format
                apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Convert PDF from Remote Server to HTML, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("ERROR:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
