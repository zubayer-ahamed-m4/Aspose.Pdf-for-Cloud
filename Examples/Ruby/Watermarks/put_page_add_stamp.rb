require 'aspose_pdf_cloud'

class Attachment

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

  def put_page_add_stamp
    file_name = "sample-input.pdf"
    upload_file(file_name)

    page_number = 1
    stamp = Stamp.new
    stamp.value = "Aspose"
    stamp.background = true
    stamp.type = "Text"

    response = @pdf_api.put_page_add_stamp(file_name, page_number, stamp)
  end

end

attachment = Attachment.new()
puts attachment.put_page_add_stamp