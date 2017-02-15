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

  def post_replace_image
    file_name = "SampleImage.pdf"
    upload_file(file_name)
    image_file_name = "aspose-cloud.png"
    upload_file(image_file_name)

    page_number = 1 
    image_number = 1
    response = @pdf_api.post_replace_image(file_name, page_number, image_number, {image_file: image_file_name})
  end

end

image_obj = Image.new()
puts image_obj.post_replace_image