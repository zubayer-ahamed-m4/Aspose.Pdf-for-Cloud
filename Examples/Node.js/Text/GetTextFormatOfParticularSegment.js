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
var name = "sample-input.pdf";
var pageNumber = 1;
var fragmentNumber = 1;
var segmentNumber = 1;

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {

	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Pdf Cloud SDK API to get text format of a particular segment
	pdfApi.GetSegmentTextFormat(name, pageNumber, fragmentNumber, segmentNumber, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var segTextFormat = responseMessage.body.TextFormat;
			console.log("FontName :: " +  segTextFormat.FontName);
			console.log("FontSize :: " +  segTextFormat.FontSize);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1