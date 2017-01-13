// ExStart:1
var fs = require('fs');
var assert = require('assert');
var PdfApi = require('asposepdfcloud');
var StorageApi = require('asposestoragecloud');
var configProps = require('../Data/config.json');
var data_path = '../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var outFolder = configProps.out_folder;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose Storage API SDK
var storageApi = new StorageApi(config);
// Instantiate Aspose.Pdf API SDK
var pdfApi = new PdfApi(config);

// Set input file name
var fileName = "Sample";
var name = fileName + ".pdf";
var format = "tiff";

try {
	// Invoke Aspose.Pdf Cloud SDK API to convert PDF to TIFF without cloud storage
	pdfApi.PutConvertDocument(format, null, null, data_path+name, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');

			// Save converted format file from response
			var outfilename = fileName + "_out." + format;
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