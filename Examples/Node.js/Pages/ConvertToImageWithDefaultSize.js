// ExStart:1
var fs = require('fs');
var assert = require('assert');
var PdfApi = require('asposepdfcloud');
var StorageApi = require('asposestoragecloud');
var configProps = require('../config/config.json');
var data_path = '../../../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose Storage API SDK
var storageApi = new StorageApi(config);
// Instantiate Aspose.Pdf API SDK
var pdfApi = new PdfApi(config);

// Set input file name
var fileName = "sample-input";
var name = fileName + ".pdf";
var pageNumber =  1;
var format = "png";

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {

	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Pdf Cloud SDK API to convert pdf page to image
	pdfApi.GetPageWithFormat(name, pageNumber, format, null, null, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			
			// Download document from response
			assert.equal(responseMessage.status, 'OK');
			var outfilename =  fileName + pageNumber + "." + format;
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