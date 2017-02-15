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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def create_PDF_from_XML
    file_name = "newPDFFromXML.pdf"
    template_file = "sample.xsl"
    data_file = "sample.xml"
    upload_file(template_file)
    upload_file(data_file)

    response = @pdf_api.put_create_document(file_name, {template_file: template_file, data_file: data_file, template_type: "xml"})
  end

end

document = Document.new()
puts document.create_PDF_from_XML