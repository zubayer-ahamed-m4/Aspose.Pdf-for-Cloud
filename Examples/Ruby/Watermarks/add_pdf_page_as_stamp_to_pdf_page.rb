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

  def add_pdf_page_as_stamp_to_pdf_page
    file_name = "sample-input.pdf"
    pdf_name = "Sample.pdf"
    upload_file(file_name)
    upload_file(pdf_name)
    
    page_number = 1
    stamp = Stamp.new
    stamp.file_name = pdf_name
    stamp.background = true
    stamp.type = "Image"
    stamp.page_index = 0
    stamp.left_margin = 0.0
    stamp.opacity = 0.5
    stamp.right_margin = 0.0
    stamp.top_margin = 0.0
    stamp.y_indent = 100.0
    stamp.x_indent = 100.0
    stamp.zoom = 1.0
    stamp.text_state = null
    stamp.width = 300.0
    stamp.height = 300.0  

    response = @pdf_api.put_page_add_stamp(file_name, page_number, stamp)
  end

end

attachment = Attachment.new()
puts attachment.add_pdf_page_as_stamp_to_pdf_page