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
var name = "SampleImage.pdf";
var pageNumber = 1;
var imageNumber = 1;

var imageFile = "aspose-cloud.png";

try {
// Upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');

		// Invoke Aspose.Pdf Cloud SDK API to replace an image in a PDF
		pdfApi.PostReplaceImage(name, pageNumber, imageNumber, null, null, null, data_path+imageFile, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');
				
				// Download updated pdf from cloud storage
				storageApi.GetDownload(name, null, null, function(responseMessage) {
					assert.equal(responseMessage.status, 'OK');
					var outfilename = name;
					var writeStream = fs.createWriteStream(data_path + outfilename);
					writeStream.write(responseMessage.body);
					});
				});
		});


}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1