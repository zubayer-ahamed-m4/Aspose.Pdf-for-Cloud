#ExStart:
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

  # Document's replace text method.
  def document_replace_text_list
    file_name = "Sample-Annotation.pdf"
    upload_file(file_name)

    text_replace_list_request = TextReplaceListRequest.new
    text_replace_1 = TextReplace.new
    text_replace_1.old_value = "Sample"
    text_replace_1.new_value = "Sample Aspose"
    text_replace_1.regex = false
    text_replace_2 = TextReplace.new
    text_replace_2.old_value = "PDF"
    text_replace_2.new_value = "PDF Document"
    text_replace_2.regex = false
    text_replace_list_request.text_replaces = [text_replace_1, text_replace_2]

    response = @pdf_api.post_document_replace_text_list(file_name, text_replace_list_request)
  end

end

text_obj = Text.new()
puts text_obj.document_replace_text_list
#ExEnd: