Pod::Spec.new do |s|
  s.name         = "AsposePdfCloud"
  s.version      = "1.0.0"
  s.summary      = "Aspose.Pdf for Cloud"
  s.description  = <<-DESC
                    Aspose.Pdf for Cloud is a REST API for creating and editing PDF files. It can also be used to convert PDF files to different formats like DOC, HTML, XPS, TIFF and many more. Aspose.Pdf for Cloud gives you control: create PDFs from scratch or from HTML, XML, template, database, XPS or an image. Render PDFs to image formats such as JPEG, PNG, GIF, BMP, TIFF and many others. Aspose.Pdf for Cloud helps you manipulate elements of a PDF file like text, annotations, watermarks, signatures, bookmarks, stamps and so on. Its REST API also allows you to manage PDF pages by using features like merging, splitting, and inserting. Add images to a PDF file or convert PDF pages to images.
                   DESC

  s.homepage     = "http://www.aspose.com/cloud/pdf-api.aspx"
  s.license = { :type => 'MIT', :file => 'LICENSE'}
  s.author = { "M. Sohail Ismail" => "muhammad.sohail@aspose.com" }
  s.social_media_url = "https://www.facebook.com/asposeplugins/"
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/asposepdf/Aspose_Pdf_Cloud.git", :tag => "1.0.0" }
  
  s.subspec 'model' do |ss|
      ss.source_files = 'SDKs/Aspose.Pdf_Cloud_SDK_for_Objective_C/Aspose.Pdf_Cloud_SDK_for_Objective_C/pdf/model/*.{h,m}'
  end
  s.subspec 'api' do |ss|
      ss.dependency 'AsposePdfCloud/model'
      ss.source_files = 'SDKs/Aspose.Pdf_Cloud_SDK_for_Objective_C/Aspose.Pdf_Cloud_SDK_for_Objective_C/pdf/api/*.{h,m}'
  end
  
  s.dependency "AFNetworking", "~> 2.0"
  s.dependency "JSONModel", "~> 1.1"
  s.dependency "ISO8601", "~> 0.3"
  s.dependency "AsposeStorageCloud"

  s.requires_arc = true

end