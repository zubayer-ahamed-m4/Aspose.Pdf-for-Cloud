Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document_Properties
    Class SetSingleDocumentProperty
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "Sample-Annotation.pdf"
            Dim propertyName As [String] = "author"
            Dim storage As [String] = ""
            Dim folder As [String] = ""
            Dim body As New DocumentProperty()
            body.Name = "author"
            body.Value = "Naeem Akram"
            body.BuiltIn = True

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to set single pdf document property
                Dim apiResponse As DocumentPropertyResponse = pdfApi.PutSetProperty(fileName, propertyName, storage, folder, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim docProp As DocumentProperty = apiResponse.DocumentProperty
                    Console.WriteLine(docProp.Name + " :: " + docProp.Value)
                    Console.WriteLine("Set a Single Document Property in a PDF, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
