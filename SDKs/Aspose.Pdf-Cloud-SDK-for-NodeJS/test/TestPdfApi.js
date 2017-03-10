var fs = require('fs');
var StorageApi = require('asposestoragecloud');
var PdfApi = require('../lib/PdfApi');
var assert = require('assert');

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};
var data_path = '../../../Data/';

var storageApi = new StorageApi(config); 
var pdfApi = new PdfApi(config);
var nodeunit = require('nodeunit');

exports.testPutConvertDocument = function(test){
	
	test.expect(2);	
	var filename = "Sample";
	var name = filename + ".pdf";
	var format = "TIFF";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutConvertDocument(format, null, null, data_path+name, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				var writeStream = fs.createWriteStream('c:/temp/' + filename + '.' +  format);
				writeStream.write(responseMessage.body);
				test.done();
			});
		});
};

exports.testGetDocument = function(test){
	
	test.expect(2);	
	var name = "Sample.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocument(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}				
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testPutCreateDocument = function(test){
	
	test.expect(2);	
	var name = "Sample" + Math.floor((Math.random() * 1000) + 1) + ".pdf";
	
	pdfApi.PutCreateDocument(name, null, null, null, null, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Document !== 'undefined', "response body assertion should pass");
			test.done();
		});
		
};


exports.testGetDocumentWithFormat = function(test){
	
	test.expect(2);	
	var filename = "Sample";
	var name = filename + ".pdf";
	var format = "DOC";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentWithFormat(name, format, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testPutDocumentSaveAsTiff = function(test){
	
	test.expect(2);	
	var name = "Sample.pdf";
	var tiffExportOptions = {
			'ResultFile' : 'Sample.tiff'
		};
	 
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutDocumentSaveAsTiff(name, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, tiffExportOptions, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');		test.done();
			});
		});
};


exports.testPostAppendDocument = function(test){
	
	test.expect(4);	
	var name = "Sample.pdf";
	var startPage = 2;
	var endPage = 3;        
	var appendFileName = "sample-input.pdf";
	var appendDocumentBody = {
			'Document' : appendFileName,
			'StartPage' : startPage,
			'EndPage' : endPage
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');

		storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
			test.equal(responseMessage.status, 'OK', '');
		
			pdfApi.PostAppendDocument(name, appendFileName, startPage, endPage, null, null, appendDocumentBody, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');
					test.ok(responseMessage.body !== null && typeof responseMessage.body.Document !== 'undefined', "response body assertion should pass");
					test.done();
				});
		});
		
	});
};


exports.testGetDocumentAttachments = function(test){
	
	test.expect(3);
	var name = "SampleAttachment.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentAttachments(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Attachments !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetDocumentAttachmentByIndex = function(test){
	
	test.expect(3);	
	var name = "SampleAttachment.pdf";            
	var attachmentIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentAttachmentByIndex(name, attachmentIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Attachment !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetDownloadDocumentAttachmentByIndex = function(test){
	
	test.expect(2);	
	var name = "SampleAttachment.pdf";
    var attachmentIndex =  1; 
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDownloadDocumentAttachmentByIndex(name, attachmentIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testGetDocumentBookmarks = function(test){
	
	test.expect(3);	
	var name = "Sample-Bookmark.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentBookmarks(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Bookmarks !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetDocumentBookmarksChildren = function(test){
	
	test.expect(3);	
	var name = "Sample-Bookmark.pdf";
	var bookmarkPath = "1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentBookmarksChildren(name, bookmarkPath, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Bookmark !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetDocumentProperties = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentProperties(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperties !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testDeleteProperties = function(test){
	
	test.expect(2);	
	var name = "Sample-Annotation.pdf";

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.DeleteProperties(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testGetDocumentProperty = function(test){
	
	test.expect(3);	
    var name = "Sample-Annotation.pdf";
    var propertyName = "author";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetDocumentProperty(name, propertyName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperty !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPutSetProperty = function(test){
	
	test.expect(3);	
    var name = "Sample-Annotation.pdf";
    var propertyName = "AsposeDev";
    var documentPropertyBody = {
    		'Name' : 'AsposeDev',
    		'Value' : 'Farooq Sheikh',
    		'BuiltIn' : false
    };
        
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutSetProperty(name, propertyName, null, null, documentPropertyBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperty !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testDeleteProperty = function(test){
	
	test.expect(2);	
	var name = "Sample-Annotation-Property.pdf";
	var propertyName = "AsposeDev";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.DeleteProperty(name, propertyName, null, null,  function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testPostCreateField = function(test){
	
	test.expect(2);	
	var name = "sample-field.pdf";
	var page = 1;
	
	var fieldbody = {
		'Name' : 'checkBoxField2',
		'Values' : ['1'],
		'Type' : 'Boolean',
		'Rect' : {
			'X' : 100,
			'Y' : 100,
			'Height' : 100,
			'Width' : 200
		}
		
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostCreateField(name, page, null, null, fieldbody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testGetFields = function(test){
	
	test.expect(3);	
	var name = "sample-field.pdf";

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetFields(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Fields !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPutUpdateFields = function(test){
	
	test.expect(3);	
	var name = "sample-field.pdf";
	var page = 1;
	var fieldsBody = {
			'List' : [{
			'Name' : 'textbox1',
			'Values' :['Aspose']
			          }]
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutUpdateFields(name, null, null, fieldsBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Fields !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetField = function(test){
	
	test.expect(3);	
	var name = "sample-field.pdf";
	var fieldName =  "textbox1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetField(name, fieldName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Field !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPutUpdateField = function(test){
	
	test.expect(3);	
	var name = "sample-field.pdf";
	var fieldName = "textbox1";
        
	var fieldbody = {
		'Name' : 'textbox1',
		'Values' : ['Aspose']
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutUpdateField(name, null, null, fieldName, fieldbody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Field !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPutMergeDocuments = function(test){
	
	test.expect(4);	
    var name = "sample-merged.pdf";
    var mergefilename1 = "Sample.pdf";
    var mergefilename2 = "sample-input.pdf";
    
    var mergeDocumentsBody = {
    		'List' : [mergefilename1, mergefilename2] 
    };
        
	storageApi.PutCreate(mergefilename1, null, null, data_path + mergefilename1 , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');		
		
	storageApi.PutCreate(mergefilename2, null, null, data_path + mergefilename2 , function(responseMessage) {	
			test.equal(responseMessage.status, 'OK', '');
			
			pdfApi.PutMergeDocuments(name, null, null, mergeDocumentsBody, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');
					test.ok(responseMessage.body !== null && typeof responseMessage.body.Document !== 'undefined', "response body assertion should pass");
					test.done();
				});
			});
		});
};


exports.testGetPages = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPages(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Pages !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPutAddNewPage = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutAddNewPage(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Pages !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetWordsPerPage = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetWordsPerPage(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.WordsPerPage !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetPage = function(test){
	
	test.expect(2);	
	var name = "sample-input.pdf";
	var pageNumber =  1; 
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPage(name, pageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testDeletePage = function(test){
	
	test.expect(2);	
	var name = "sample-input.pdf";
	var pageNumber =  1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.DeletePage(name, pageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');			
				test.done();
			});
		});
};


exports.testGetPageWithFormat = function(test){
	
	test.expect(2);	
	var name = "Sample-Annotation.pdf";
	var pageNumber =  1;
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageWithFormat(name, pageNumber, format, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testGetPageAnnotations = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	var pageNumber =  1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageAnnotations(name, pageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Annotations !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetPageAnnotation = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	var pageNumber =  1;
	var annotationNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageAnnotation(name, pageNumber, annotationNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Annotation !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetFragments = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetFragments(name, pageNumber, null, null, null,  function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetFragment = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var fragmentNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetFragment(name, pageNumber, fragmentNumber, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetSegments = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1; 
	var fragmentNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetSegments(name, pageNumber, fragmentNumber, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetSegment = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var fragmentNumber = 1;
	var segmentNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetSegment(name, pageNumber, fragmentNumber, segmentNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItem !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetSegmentTextFormat = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var fragmentNumber = 1;
	var segmentNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetSegmentTextFormat(name, pageNumber, fragmentNumber, segmentNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextFormat !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetFragmentTextFormat = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var fragmentNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetFragmentTextFormat(name, pageNumber, fragmentNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextFormat !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetImages = function(test){
	
	test.expect(3);	
	var name = "SampleImage.pdf";
	var pageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetImages(name, pageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Images !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostReplaceImage = function(test){
	
	test.expect(3);	
	var name = "SampleImage.pdf";
	var pageNumber = 1;
	var imageNumber = 1;
        
	var imageFile = "aspose-cloud.png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostReplaceImage(name, pageNumber, imageNumber, null, null, null, data_path+imageFile, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Image !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetImage = function(test){
	
	test.expect(2);	
	var name = "SampleImage.pdf";
	var pageNumber = 1;
	var imageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetImage(name, pageNumber, imageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};

exports.testGetImageWithFormat = function(test){
	
	test.expect(2);	
	var name = "SampleImage.pdf";
	var pageNumber = 1;
	var imageNumber = 1;
	var format = "jpeg";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetImageWithFormat(name, pageNumber, imageNumber, format, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');				
				test.done();
			});
		});
};


exports.testGetExtractBarcodes = function(test){
	
	test.expect(3);	
	var name = "SampleBarCodeImage.pdf";
	var pageNumber = 2;
	var imageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetExtractBarcodes(name, pageNumber, imageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Barcodes !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetPageLinkAnnotations = function(test){
	
	test.expect(3);	
	var name = "Sample-Bookmark.pdf";
	var pageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageLinkAnnotations(name, pageNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Links !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetPageLinkAnnotationByIndex = function(test){
	
	test.expect(3);	
	var name = "Sample-Bookmark.pdf";
	var pageNumber = 1;
	var linkIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageLinkAnnotationByIndex(name, pageNumber, linkIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Link !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostMovePage = function(test){
	
	test.expect(2);	
	var name = "sample-merged.pdf";
	var pageNumber = 1;
	var newIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostMovePage(name, pageNumber, newIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');			
				test.done();
			});
		});
};


exports.testPostPageReplaceText = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var textReplaceBody = {
			'OldValue' : 'Sample PDF',
			'NewValue' : 'Sample Aspose PDF'			
	};  
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostPageReplaceText(name, pageNumber, null, null, textReplaceBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostPageReplaceTextList = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var tr1 = {
			'OldValue' : 'Sample PDF',
			'NewValue' : 'Sample Aspose PDF'			
	};
	var tr2 = {
			'OldValue' : 'Sample PDF',
			'NewValue' : 'Sample Aspose PDF'			
	};
	
	var textReplaceListRequestBody = {
			'TextReplaces' : [tr1, tr2]
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostPageReplaceTextList(name, pageNumber, null, null, textReplaceListRequestBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostSignPage = function(test){
	
	test.expect(3);	
         
	var name = "sample-input.pdf";
	var signatureFileName = "pkc7-sample.pfx";
	var pageNumber = 1;
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
         
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');		
		
		storageApi.PutCreate(signatureFileName, null, null, data_path + signatureFileName , function(responseMessage) {	
			test.equal(responseMessage.status, 'OK', '');
			
		pdfApi.PostSignPage(name, pageNumber, null, null, signatureBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				if(config.debug){console.log('body:', responseMessage.body);}
					test.done();
			});
		});
	});
};


exports.testPutPageAddStamp = function(test){
	
	test.expect(2);	
	var name = "sample-input.pdf";
	var pageNumber = 1;
	var stampBody = {
			'Value' : 'Aspose',
			'Background' : true,
			'Type' : 'Text'
			
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PutPageAddStamp(name, pageNumber, null, null, stampBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};


exports.testGetPageTextItems = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	var pageNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetPageTextItems(name, pageNumber, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostDocumentReplaceText = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";	
	var textReplaceBody = {
			'OldValue' : 'Sample PDF',
			'NewValue' : 'Sample Aspose PDF'			
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostDocumentReplaceText(name, null, null, textReplaceBody,  function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};


exports.testPostDocumentReplaceTextList = function(test){
	
	test.expect(3);	
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
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostDocumentReplaceTextList(name, null, null, textReplaceListRequestBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testPostSignDocument = function(test){
	
	test.expect(3);	
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
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');

	storageApi.PutCreate(signatureFileName, null, null, data_path + signatureFileName , function(responseMessage) {	
			test.equal(responseMessage.status, 'OK', '');
			
			pdfApi.PostSignDocument(name, null, null, signatureBody, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');					
					test.done();
				});
			});
		});
};


exports.testPostSplitDocument = function(test){
	
	test.expect(3);	
	var name = "sample-input.pdf";
	var format = "pdf";
	var from = 1;
	var to = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.PostSplitDocument(name, format, from, to, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Result !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};


exports.testGetTextItems = function(test){
	
	test.expect(3);	
	var name = "Sample-Annotation.pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		pdfApi.GetTextItems(name, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

