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
  def document_replace_text
    file_name = "sample-input.pdf"
    upload_file(file_name)

    text_replace = TextReplace.new
    text_replace.old_value = "Sample PDF"
    text_replace.new_value = "Sample Aspose PDF"

    response = @pdf_api.post_document_replace_text(file_name, text_replace)
  end

end

text_obj = Text.new()
puts text_obj.document_replace_text
#ExEnd: