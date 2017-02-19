require 'aspose_pdf_cloud'

class Image

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

  # Get image in specified format.
  def get_image_in_specified_format
    file_name = "SampleImage.pdf"
    upload_file(file_name)

    page_number = 1
    image_number = 1
    format = "jpeg"
    response = @pdf_api.get_image_with_format(file_name, page_number, image_number, format)
  end

end

image_obj = Image.new()
puts image_obj.get_image_in_specified_format