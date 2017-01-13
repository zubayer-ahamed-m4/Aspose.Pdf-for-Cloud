// ExStart:1
var fs = require('fs');
var assert = require('assert');
var PdfApi = require('asposepdfcloud');
var configProps = require('../Data/config.json');
var data_path = '../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var outFolder = configProps.out_folder;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose.Pdf API SDK
var pdfApi = new PdfApi(config);

// Set input file name
var fileName = "123";
var name = fileName + ".pdf";
var format = "tiff";
var url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + name;

try {
	// Invoke Aspose.Pdf Cloud SDK API to convert PDF to TIFF using remote hosted pdf
	pdfApi.PutConvertDocument(format, url, null, null, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		// Save converted format file from response
		var outfilename = fileName + "." + format;
		var writeStream = fs.createWriteStream(data_path + outfilename);
		writeStream.write(responseMessage.body);

	});

}
catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1