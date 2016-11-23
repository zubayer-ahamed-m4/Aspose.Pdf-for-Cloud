# Aspose.Pdf Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud PDF APIs](http://www.aspose.com/cloud/pdf-api.aspx) in your web apps.

<p align="center">
  <a title="Download complete Aspose.PDF for Cloud source code" href="https://github.com/asposepdf/Aspose_pdf_Cloud/archive/master.zip">
	<img src="https://raw.github.com/AsposeExamples/java-examples-dashboard/master/images/downloadZip-Button-Large.png" />
  </a>
</p>

##How to Use the SDK?
The complete source code is available in this repository folder, you can either directly use it in your project or use RubyGems. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/pdfcloud/Available+SDKs).

## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_pdf_cloud'

class AsposePDFUsage
  
  include AsposePDFCloud
  include AsposeStorageCloud
	
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @pdf_api = PdfApi.new  
  end
  
  def convert_document_to_tiff
    #Convert document from request content to tiff format.
    file_name = "Sample.pdf"
    response = @pdf_api.put_convert_document(File.open("data/" << file_name,"r") { |io| io.read }, {format: "tiff"})
  end
  
end
```
## Unit Tests
Aspose PDF SDK includes a suite of unit tests within the [test](https://github.com/asposepdf/Aspose_Pdf_Cloud/blob/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Ruby/test/pdf_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose PDF SDK.

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).

