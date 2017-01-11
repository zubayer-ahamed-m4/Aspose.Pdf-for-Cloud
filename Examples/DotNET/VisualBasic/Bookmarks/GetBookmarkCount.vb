Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Bookmarks
    Class GetBookmarkCount
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample-Bookmark.pdf"
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))
                ' Invoke Aspose.PDF Cloud SDK API to get bookmark count from pdf
                Dim apiResponse As BookmarksResponse = pdfApi.GetDocumentBookmarks(fileName, storage, folder)
                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim bookmarks As Com.Aspose.PDF.Model.Bookmarks = apiResponse.Bookmarks
                    Dim count As Integer = bookmarks.List.Count
                    Console.WriteLine("Bookmark Count :: " + count)
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
