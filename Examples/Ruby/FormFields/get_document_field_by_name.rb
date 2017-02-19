require 'aspose_pdf_cloud'

class FormField

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

  # Get document field by name.
  def get_document_field_by_name
    file_name = "sample-field.pdf"
    upload_file(file_name)

    field_name = "textbox1"
    response = @pdf_api.get_field(file_name, field_name)
  end

end

formField = FormField.new()
puts formField.get_document_field_by_name