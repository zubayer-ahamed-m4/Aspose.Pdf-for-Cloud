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

  # Read segment text format.
  def read_segment_text_format
    file_name = "sample-input.pdf"
    upload_file(file_name)

    page_number = 1
    fragment_number = 1 
    segment_number = 1
    response = @pdf_api.get_segment_text_format(file_name, page_number, fragment_number, segment_number)
  end

end

text_obj = Text.new()
puts text_obj.read_segment_text_format
#ExEnd: