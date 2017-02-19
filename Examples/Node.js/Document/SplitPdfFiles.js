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
var name = "sample-input.pdf";
var format = "pdf";
var from = 1;
var to = 2;

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Pdf Cloud SDK API to split all or specific pages of a PDF
	pdfApi.PostSplitDocument(name, format, from, to, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');

			responseMessage.body.Result.Documents.forEach(function(splitDoc) {
				var urlString = splitDoc.Href;
				var splittedFileName = urlString.split('/').pop();
				
				// Download pdf from storage server
				storageApi.GetDownload(splittedFileName, null, null, function(responseMessage) {
					assert.equal(responseMessage.status, 'OK');
					var writeStream = fs.createWriteStream(data_path + splittedFileName);
					writeStream.write(responseMessage.body);
					});
				});

			});
	});

}
catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1