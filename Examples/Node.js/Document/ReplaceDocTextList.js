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

var name = "Sample-Annotation.pdf";	
var tr1 = {
			'OldValue' : 'Sample',
			'NewValue' : 'Sample Aspose'			
	};
	
var tr2 = {
			'OldValue' : 'PDF',
			'NewValue' : 'Aspose PDF'			
	};
	
var textReplaceListRequestBody = {
			'TextReplaces' : [tr1, tr2]
			
	};

try {
// Invoke Aspose.Storage Cloud SDK API to upload file
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		// Invoke Aspose.Pdf Cloud SDK API to replace pdf text list
		pdfApi.PostDocumentReplaceTextList(name, null, null, textReplaceListRequestBody, function(responseMessage) {
			console.log("Status:" + responseMessage.status);
			
			});
	});

}catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1