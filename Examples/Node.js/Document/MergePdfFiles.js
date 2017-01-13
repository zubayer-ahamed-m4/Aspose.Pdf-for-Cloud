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
var name = "sample-merged.pdf";
var mergefilename1 = "Sample.pdf";
var mergefilename2 = "sample-input.pdf";

var mergeDocumentsBody = {
		'List' : [mergefilename1, mergefilename2]
};

try {
// Upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');

	storageApi.PutCreate(mergefilename1, null, null, data_path + mergefilename1 , function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		storageApi.PutCreate(mergefilename2, null, null, data_path + mergefilename2 , function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');

			// Invoke Aspose.Pdf Cloud SDK API to merge multiple PDF files
			pdfApi.PutMergeDocuments(name, null, null, mergeDocumentsBody, function(responseMessage) {
					assert.equal(responseMessage.status, 'OK');

					// Download merged pdf from storage server
					storageApi.GetDownload(name, null, null, function(responseMessage) {
						assert.equal(responseMessage.status, 'OK');
						var writeStream = fs.createWriteStream(data_path + "sample-merged_out.pdf");
						writeStream.write(responseMessage.body);
						});
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