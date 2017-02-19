require 'aspose_pdf_cloud'

class Text

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

  # Page's replace text method.
  def page_replace_text_list
    file_name = "sample-input.pdf"
    upload_file(file_name)

    page_number = 1
    text_replace_list_request = TextReplaceListRequest.new 
    text_request_1 = TextReplace.new
    text_request_1.old_value = "Sample"
    text_request_1.new_value = "Sample Aspose"
    text_request_2 = TextReplace.new
    text_request_2.old_value = "PDF"
    text_request_2.new_value = "PDF Document"
    text_replace_list_request.text_replaces = [text_request_1, text_request_2]

    response = @pdf_api.post_page_replace_text_list(file_name, page_number, text_replace_list_request)
  end

end

text_obj = Text.new()
puts text_obj.page_replace_text_list