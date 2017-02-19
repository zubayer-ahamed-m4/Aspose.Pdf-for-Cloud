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
var name = "sample-field.pdf";
var fieldName =  "textbox1";
try {
// Upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {

	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Pdf Cloud SDK API to get a particular form field from the PDF document
	pdfApi.GetField(name, fieldName, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var field = responseMessage.body.Field;
			console.log("Name" + field.Name);
			console.log("Value" + field.Values[0]);

			});
	});

}
catch (e) 
{
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1