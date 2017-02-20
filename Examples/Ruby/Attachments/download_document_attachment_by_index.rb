#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Download document attachment content by its index.
  def download_document_attachment_by_index
    file_name = "SampleAttachment.pdf"
    upload_file(file_name)
    
    attachment_index = 1        
    response = @pdf_api.get_download_document_attachment_by_index(file_name, attachment_index)
  end

end

attachment = Attachment.new()
puts attachment.download_document_attachment_by_index
#ExEnd: