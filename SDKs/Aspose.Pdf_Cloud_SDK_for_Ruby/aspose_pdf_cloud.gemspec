# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_pdf_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_pdf_cloud"
  s.version     = AsposePDFCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/pdf-api.aspx"
  s.summary     = %q{Aspose.Pdf for Cloud}
  s.description = %q{Aspose.Pdf for Cloud is a REST API for creating and editing PDF files. It can also be used to convert PDF files to different formats like DOC, HTML, XPS, TIFF and many more. Aspose.Pdf for Cloud gives you control: create PDFs from scratch or from HTML, XML, template, database, XPS or an image. Render PDFs to image formats such as JPEG, PNG, GIF, BMP, TIFF and many others. Aspose.Pdf for Cloud helps you manipulate elements of a PDF file like text, annotations, watermarks, signatures, bookmarks, stamps and so on. Its REST API also allows you to manage PDF pages by using features like merging, splitting, and inserting. Add images to a PDF file or convert PDF pages to images.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'
  s.add_runtime_dependency 'aspose_storage_cloud', '~> 1.0', '>= 1.0.0'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end