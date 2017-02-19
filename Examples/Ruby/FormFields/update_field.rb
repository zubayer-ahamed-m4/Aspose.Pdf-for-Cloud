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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Update field.
  def update_field
    file_name = "sample-field.pdf"
    upload_file(file_name)

    field_name = "textbox1"
    
    field = Field.new
    field.name = field_name
    field.values = ["Aspose"]

    response = @pdf_api.put_update_field(file_name, field, field_name)
  end

end

formField = FormField.new()
puts formField.update_field