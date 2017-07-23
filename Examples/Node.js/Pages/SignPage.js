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

var name = "sample-input.pdf";
var signatureFileName = "pkc7-sample.pfx";
var pageNumber = 1;
var signatureBody = {
			'Authority' : 'Naeem Akram',
			'Location' : 'Gojra',
			'Contact' : 'naeem.akram@aspose.com',
			'Date' : '04/18/2017 2:00:00.000 AM',
			'FormFieldName' :  'Signature1',
			'Password' : 'aspose',
			'SignaturePath' : signatureFileName,
			'SignatureType' : 'PKCS7',
			'Visible' : true,
			'Rectangle' : {
				'X' : 100,
				'Y' : 100,
				'Height' : 100,
				'Width' : 200
			}
	}; 

try {
	// Upload source file to aspose cloud storage
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	storageApi.PutCreate(signatureFileName, null, null, data_path + signatureFileName , function(responseMessage) {	
	assert.equal(responseMessage.status, 'OK', '');
			
		pdfApi.PostSignPage(name, pageNumber, null, null, signatureBody, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK', '');
				console.log('body:', responseMessage.body);					
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