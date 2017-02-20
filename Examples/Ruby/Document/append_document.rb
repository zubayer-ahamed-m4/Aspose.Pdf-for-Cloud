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

  # Append document to existing one.
  def append_document
    file_name = "Sample.pdf"
    upload_file(file_name)
    append_file_name = "sample-input.pdf"
    upload_file(append_file_name)

    append_document = AppendDocument.new
    append_document.document = append_file_name;
    append_document.start_page = 2
    append_document.end_page = 3

    response = @pdf_api.post_append_document(file_name, append_document)
  end

end

document = Document.new()
puts document.append_document
#ExEnd: