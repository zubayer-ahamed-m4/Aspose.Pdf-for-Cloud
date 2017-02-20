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

  # Read document attachments info.
  def read_document_attachments_info
    file_name = "SampleAttachment.pdf"
    upload_file(file_name)

    response = @pdf_api.get_document_attachments(file_name)
  end

end

attachment = Attachment.new()
puts attachment.read_document_attachments_info
#ExEnd: