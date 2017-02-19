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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Convert document from request content to format specified.
  def convert_document_from_request_content_to_specified_format
    file_name = "Sample.pdf"
    response = @pdf_api.put_convert_document(File.open("../data/" << file_name,"r") { |io| io.read }, {format: "tiff"})
  end

end

document = Document.new()
puts document.convert_document_from_request_content_to_specified_format