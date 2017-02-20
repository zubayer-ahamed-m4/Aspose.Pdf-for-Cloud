#ExStart:
require 'aspose_pdf_cloud'

class Document

  include AsposePDFCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @pdf_api = PdfApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Sign page.
  def sign_page
    file_name = "sample-input.pdf"
    upload_file(file_name)

    signature_file_name = "pkc7-sample.pfx"
    upload_file(signature_file_name)
      
    page_number = 1
    signature = Signature.new
    signature.authority = "Alexey"
    signature.location = "London"
    signature.contact = "alexey@aspose.com"
    signature.date = "10/25/2015 2:46:00.000 PM"
    signature.form_field_name = "Signature1"
    signature.password = "aspose"
    rectangle = Rectangle.new
    rectangle.x = 100
    rectangle.y = 100
    rectangle.height = 100
    rectangle.width = 200
    signature.rectangle = rectangle
    signature.signature_path = signature_file_name
    signature.signature_type = "PKCS7"
    signature.visible = true

    response = @pdf_api.post_sign_page(file_name, page_number, signature)
  end

end

document = Document.new()
puts document.sign_page
#ExEnd: