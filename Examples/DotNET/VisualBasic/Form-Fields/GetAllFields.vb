Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Form_Fields
    Class GetAllFields
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-field.pdf"
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to get all fields from pdf document
                Dim apiResponse As FieldsResponse = pdfApi.GetFields(fileName, storage, folder)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    For Each field As Field In apiResponse.Fields.List
                        Console.WriteLine("Name:" + field.Name)
                        Console.WriteLine("Value:" + field.Values(0))
                    Next
                    Console.WriteLine("Get all Form Fields from the PDF Document, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
