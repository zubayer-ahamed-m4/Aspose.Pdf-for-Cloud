// ExStart:1
var fs = require('fs');
var assert = require('assert');
var PdfApi = require('asposepdfcloud');
var StorageApi = require('asposestoragecloud');
var configProps = require('../config/config.json');
var data_path = '../../../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var outFolder = configProps.out_folder;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose Storage API SDK
var storageApi = new StorageApi(config);
// Instantiate Aspose.Pdf API SDK
var pdfApi = new PdfApi(config);

// Set input file name
var name = "CreateEmptyPdf.pdf";

try {
// Invoke Aspose.Pdf Cloud SDK API to create an empty PDF file
pdfApi.PutCreateDocument(name, null, null, null, null, null, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		console.log("Empty Pdf has been created successfully");

		// Download pdf from storage server
		storageApi.GetDownload(name, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var writeStream = fs.createWriteStream(data_path + "CreateEmptyPdf_out.pdf");
			writeStream.write(responseMessage.body);
			});
	});

}catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1