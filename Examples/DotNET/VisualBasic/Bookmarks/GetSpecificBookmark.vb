Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Bookmarks
    Class GetSpecificBookmark
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample-Bookmark.pdf"
            Dim bookmarkPath As [String] = "1"
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to get specific bookmark
                Dim apiResponse As ResponseMessage = pdfApi.GetDocumentBookmarksChildren(fileName, bookmarkPath, storage, folder)

                If apiResponse IsNot Nothing Then
                    Console.WriteLine("Get Specific Bookmark from a PDF,Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try

            ' ExEnd:1
        End Sub
    End Class
End Namespace
