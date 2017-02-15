require 'aspose_pdf_cloud'

class Bookmark

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

  def get_document_bookmarks_children
    file_name = "Sample-Bookmark.pdf"
    upload_file(file_name)

    bookmark_path = "1"
    response = @pdf_api.get_document_bookmarks_children(file_name, bookmark_path)
  end

end

bookmark = Bookmark.new()
puts bookmark.get_document_bookmarks_children