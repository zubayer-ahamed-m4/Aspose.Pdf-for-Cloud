Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api
Imports System.Collections.Generic

Namespace Form_Fields
    Class UpdateFormField
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-field.pdf"
            Dim fieldName As [String] = "textbox1"
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Dim body As New Field()
            body.Name = "textbox1"
            body.Values = New List(Of String)() From { _
                "Aspose" _
            }

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))

                ' Invoke Aspose.PDF Cloud SDK API to update form field
                Dim apiResponse As FieldResponse = pdfApi.PutUpdateField(fileName, storage, folder, fieldName, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Dim field As Field = apiResponse.Field
                    Console.WriteLine("Name" + field.Name)
                    Console.WriteLine("Value" + field.Values(0))
                    Console.WriteLine("Update a Form Field in a PDF Document, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace