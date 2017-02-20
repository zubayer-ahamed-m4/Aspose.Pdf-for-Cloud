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

  # Convert document to specified format
  def convert_document_to_specified_format
    file_name = "Sample.pdf"
    upload_file(file_name)

    format = "doc"
    response = @pdf_api.get_document_with_format(file_name, format)
  end

end

document = Document.new()
puts document.convert_document_to_specified_format
#ExEnd: