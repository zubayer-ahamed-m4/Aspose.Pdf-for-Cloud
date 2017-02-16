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
var fileName = "SampleImage";
var name = "SampleImage.pdf";
var pageNumber = 1;
var imageNumber = 1;
var format = "jpeg";
var width = 200;
var height = 200;

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {

	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Pdf Cloud SDK API to extract a particular image from a PDF page with specified size
	pdfApi.GetImageWithFormat(name, pageNumber, imageNumber, format, width, height, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			// Download image from response
			var outfilename = fileName + "." + format;
			var writeStream = fs.createWriteStream(data_path + outfilename);
			writeStream.write(responseMessage.body);
			});
	});

}
catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1