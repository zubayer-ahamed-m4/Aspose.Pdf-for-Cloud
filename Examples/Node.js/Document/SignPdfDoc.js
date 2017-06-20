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

var name = "sample-input-2.pdf";
var signatureFileName = "pkc7-sample.pfx";
	
var signatureBody = {
			'Authority' : 'Farooq Sheikh',
			'Location' : 'Rawalpindi',
			'Contact' : 'farooq.sheikh@aspose.com',
			'Date' : '06/24/2015 2:00:00.000 AM',
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
// Upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
	assert.equal(responseMessage.status, 'OK');

	storageApi.PutCreate(signatureFileName, null, null, data_path + signatureFileName , function(responseMessage) {	
		assert.equal(responseMessage.status, 'OK');

		// Invoke Aspose.Pdf Cloud SDK API to sign PDF document
		pdfApi.PostSignDocument(name, null, null, signatureBody, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');

				// Download signed pdf from storage server
				storageApi.GetDownload(name, null, null, function(responseMessage) {
					assert.equal(responseMessage.status, 'OK');
					var writeStream = fs.createWriteStream(data_path + "sample-input-2_out.pdf");
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