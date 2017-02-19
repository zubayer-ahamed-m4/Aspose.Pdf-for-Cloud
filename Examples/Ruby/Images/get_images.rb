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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Read document images.
  def get_images
    file_name = "SampleImage.pdf"
    upload_file(file_name)

    page_number = 1
    response = @pdf_api.get_images(file_name, page_number)
  end

end

image_obj = Image.new()
puts image_obj.get_images