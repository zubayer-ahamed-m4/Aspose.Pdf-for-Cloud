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
var textReplaceBody = {
			'OldValue' : 'Sample PDF',
			'NewValue' : 'Sample Aspose PDF'			
	};

try {
// Invoke Aspose.Storage Cloud SDK API to upload file
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		// Invoke Aspose.Pdf Cloud SDK API to replace document text
		pdfApi.PostDocumentReplaceText(name, null, null, textReplaceBody,  function(responseMessage) {
			console.log("Status:" + responseMessage.status);
			
			});
	});

}catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1