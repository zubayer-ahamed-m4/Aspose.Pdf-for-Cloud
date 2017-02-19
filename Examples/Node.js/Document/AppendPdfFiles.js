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
var name = "Sample.pdf";
var startPage = 2;
var endPage = 3;
var appendFileName = "sample-input.pdf";
var appendDocumentBody = {
		'Document' : appendFileName,
		'StartPage' : startPage,
		'EndPage' : endPage
};

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');

	storageApi.PutCreate(appendFileName, null, null, data_path + appendFileName , function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		// Invoke Aspose.Pdf Cloud SDK API to append multiple PDF files
		pdfApi.PostAppendDocument(name, null, startPage, endPage, null, null, appendDocumentBody, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');

				// Download appended document from storage server
				storageApi.GetDownload(name, null, null, function(responseMessage) {
					assert.equal(responseMessage.status, 'OK');
					var outfilename = 'appended_out' + name;
					var writeStream = fs.createWriteStream(data_path  + outfilename);
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