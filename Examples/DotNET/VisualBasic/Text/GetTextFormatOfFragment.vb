Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Text
    Class GetTextFormatOfFragment
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim pageNumber As Integer = 1
            Dim fragmentNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to get text format of pdf fragment
                Dim apiResponse As TextFormatResponse = pdfApi.GetFragmentTextFormat(fileName, pageNumber, fragmentNumber, storage, folder)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim segTextFormat As TextFormat = apiResponse.TextFormat
                    Console.WriteLine("Segment Font Name - " + segTextFormat.FontName)
                    Console.WriteLine("Segment Font Size - " + segTextFormat.FontSize.Value)
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
