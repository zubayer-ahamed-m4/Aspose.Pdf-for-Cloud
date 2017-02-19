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

  # Split document to parts.
  def split_document
    file_name = "sample-input.pdf"
    upload_file(file_name)

    response = @pdf_api.post_split_document(file_name, {format: "pdf", from: 1, to: 2})
  end

end

document = Document.new()
puts document.split_document