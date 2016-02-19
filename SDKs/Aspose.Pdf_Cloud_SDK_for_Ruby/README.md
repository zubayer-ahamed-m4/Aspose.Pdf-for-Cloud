# Aspose.Pdf Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud PDF APIs](http://www.aspose.com/cloud/pdf-api.aspx) in your web apps.

## Installing
You can simply install AsposePDFCloud with gem:

`gem install aspose_pdf_cloud`

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

## Contact
Your feedback is very important to us. Please email us all your queries and feedback at marketplace@aspose.com.

## License
Aspose PDF SDK is available under the MIT license. See the [LICENSE](https://github.com/asposepdf/Aspose_Pdf_Cloud/blob/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Ruby/LICENSE) file for more info.
