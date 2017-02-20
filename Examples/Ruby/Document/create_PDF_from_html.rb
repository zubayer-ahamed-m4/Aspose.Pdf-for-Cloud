#ExStart:
require 'aspose_pdf_cloud'

class Document

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

  def create_pdf_from_html
    file_name = "newPDFFromHTML.pdf"
    template_file = "sample.html"
    upload_file(template_file)
    response = @pdf_api.put_create_document(file_name, {template_file: template_file, template_type: "html"})
  end

end

document = Document.new()
puts document.create_pdf_from_html
#ExEnd: