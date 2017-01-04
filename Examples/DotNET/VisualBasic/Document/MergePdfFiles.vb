Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class MergePdfFiles
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-merged.pdf"
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Dim body As New MergeDocuments()
            body.List = New System.Collections.Generic.List(Of String)() From { _
                "sample.pdf", _
                "input.pdf" _
            }

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate("sample.pdf", "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + "sample.pdf"))
                storageApi.PutCreate("input.pdf", "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + "input.pdf"))

                ' Invoke Aspose.PDF Cloud SDK API to merge pdf files
                Dim apiResponse As DocumentResponse = pdfApi.PutMergeDocuments(fileName, storage, folder, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Merge Multiple PDF Files, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
