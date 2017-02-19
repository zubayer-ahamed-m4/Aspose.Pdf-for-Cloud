require 'aspose_pdf_cloud'

class Links

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

  # Read document page link annotation by its index.
  def read_page_link_annotation_by_index
    file_name = "Sample-Bookmark.pdf"
    upload_file(file_name)

    page_number = 1
    link_index = 1
    response = @pdf_api.get_page_link_annotation_by_index(file_name, page_number, link_index)
  end

end

links = Links.new()
puts links.read_page_link_annotation_by_index