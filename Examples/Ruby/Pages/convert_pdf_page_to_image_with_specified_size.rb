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

  # Get page in specified format.
  def convert_pdf_page_to_image_with_specified_size
    file_name = "Sample-Annotation.pdf"
    upload_file(file_name)

    page_number = 1
    format = "png"
    width = 300
    height = 300
    response = @pdf_api.get_page_with_format(file_name, page_number, format, {width: width, height: height})
  end

end

page = Page.new()
puts page.convert_pdf_page_to_image_with_specified_size