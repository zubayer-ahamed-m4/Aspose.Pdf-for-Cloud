#ExStart:
require 'aspose_pdf_cloud'

class Page

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

  # Move page to new position.
  def move_page_to_new_position
    file_name = "sample-merged.pdf"
    upload_file(file_name)

    page_number = 1
    new_index = 1
    response = @pdf_api.post_move_page(file_name, page_number, new_index)
  end

end

page = Page.new()
puts page.move_page_to_new_position
#ExEnd: