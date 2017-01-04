Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class SignPdfDoc
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-input.pdf"
            Dim signatureFileName As [String] = "pkc7-sample.pfx"
            Dim pageNumber As Integer = 1
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Dim body As New Signature()
            body.Authority = "Naeem Akram"
            body.Location = "Gojra"
            body.Contact = "naeem.akram@aspose.com"
            body.[Date] = "06/24/2015 2:00:00.000 AM"
            body.FormFieldName = "Signature1"
            body.Password = "aspose"
            Dim rect As New Rectangle()
            rect.X = 100
            rect.Y = 100
            rect.Height = 100
            rect.Width = 200
            body.Rectangle = rect
            body.SignaturePath = signatureFileName
            body.SignatureType = "PKCS7"
            body.Visible = True

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName))
                storageApi.PutCreate(signatureFileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + signatureFileName))

                ' Invoke Aspose.PDF Cloud SDK API to sign Pdf document
                Dim apiResponse As SaaSposeResponse = pdfApi.PostSignPage(fileName, pageNumber, storage, folder, body)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Sign PDF Documents, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace

