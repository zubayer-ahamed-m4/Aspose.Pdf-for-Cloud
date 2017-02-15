require 'aspose_pdf_cloud'

class DocumentProperty

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

  def put_set_property
    file_name = "Sample-Annotation.pdf"
    upload_file(file_name)

    property_name = "author"
    document_property = DocumentProperty.new
    document_property.name = property_name
    document_property.value = "Elon"
    document_property.built_in = true

    response = @pdf_api.put_set_property(file_name, property_name, document_property)
  end

end

documentProperty = DocumentProperty.new()
puts documentProperty.put_set_property