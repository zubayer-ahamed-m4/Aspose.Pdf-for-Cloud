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

  def put_merge_documents
    upload_file("Sample.pdf")
    upload_file("sample-input.pdf")

    merge_documents = MergeDocuments.new
    merge_documents.list = ["Sample.pdf", "sample-input.pdf"]

    response = @pdf_api.put_merge_documents("sample-merged.pdf", merge_documents)
  end

end

document = Document.new()
puts document.put_merge_documents