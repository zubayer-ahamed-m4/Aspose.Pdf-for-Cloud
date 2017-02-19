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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Get page in specified format.
  def get_page_in_specified_format
    file_name = "Sample-Annotation.pdf"
    upload_file(file_name)

    page_number = 1
    format = "png"
    response = @pdf_api.get_page_with_format(file_name, page_number, format)
  end

end

page = Page.new()
puts page.get_page_in_specified_format