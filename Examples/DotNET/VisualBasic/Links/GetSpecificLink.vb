Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Links
    Class GetSpecificLink
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample-Bookmark.pdf"
            Dim pageNumber As Integer = 1
            Dim linkIndex As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""


            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to get specific link from a pdf page
                Dim apiResponse As LinkAnnotationResponse = pdfApi.GetPageLinkAnnotationByIndex(fileName, pageNumber, linkIndex, storage, folder)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim linkAnnotation As LinkAnnotation = apiResponse.Link
                    Console.WriteLine("Action Type :: " + linkAnnotation.ActionType)
                    Console.WriteLine("Action :: " + linkAnnotation.Action)
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
