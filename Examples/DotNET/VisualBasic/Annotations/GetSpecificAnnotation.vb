Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Annotations
    Class GetSpecificAnnotation
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample-Annotation.pdf"
            Dim pageNumber As Integer = 1
            Dim annotationNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to get specific annotation from pdf page
                Dim apiResponse As AnnotationResponse = pdfApi.GetPageAnnotation(fileName, pageNumber, annotationNumber, storage, folder)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim annotation As Annotation = apiResponse.Annotation
                    Console.WriteLine("Annotation Content" + annotation.Contents)
                    Console.ReadKey()
                End If
            Catch ex As Exception

                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
