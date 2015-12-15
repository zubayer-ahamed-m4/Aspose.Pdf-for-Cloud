var path = require('path');
var fs = require('fs');
var apiClient = require('./api-client');


function PdfApi(config) {
	var self = this;
	
	apiClient = new apiClient(config);
	this.config = apiClient.config;
}


/**
* PutConvertDocument
* Convert document from request content to format specified.
*
* @param  (String) format  -  The format to convert. (optional) 
* @param  (String) url  -   (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.PutConvertDocument = function(format, url, outPath, file, callback) {

    var self = this;
	   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/pdf/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;url={url}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof url !== 'undefined' &&  url !== null && url!== ''){            
			resourcePath = resourcePath.replace("{" + "url" + "}" , url);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]url.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocument
* Read common document info.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetDocument = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutCreateDocument
* Create new document.
*
* @param  (String) name  -  The new document name. (required) 
* @param  (String) templateFile  -  The template file server path if defined. (optional) 
* @param  (String) dataFile  -  The data file path (for xml template only). (optional) 
* @param  (String) templateType  -  The template type, can be xml or html. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The new document folder. (optional) 
* @returns DocumentResponse (Map)
*/
PdfApi.prototype.PutCreateDocument = function(name, templateFile, dataFile, templateType, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/pdf/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;templateType={templateType}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof templateFile !== 'undefined' &&  templateFile !== null && templateFile!== ''){            
			resourcePath = resourcePath.replace("{" + "templateFile" + "}" , templateFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]templateFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof dataFile !== 'undefined' &&  dataFile !== null && dataFile!== ''){            
			resourcePath = resourcePath.replace("{" + "dataFile" + "}" , dataFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]dataFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof templateType !== 'undefined' &&  templateType !== null && templateType!== ''){            
			resourcePath = resourcePath.replace("{" + "templateType" + "}" , templateType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]templateType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentWithFormat
* Read common document info or convert to some format if the format specified.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) format  -  The format to convert. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetDocumentWithFormat = function(name, format, storage, folder, outPath, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutDocumentSaveAsTiff
* Save document as Tiff image.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) resultFile  -  The resulting file. (optional) 
* @param  (String) brightness  -  The image brightness. (optional) 
* @param  (String) compression  -  Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional) 
* @param  (String) colorDepth  -  Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional) 
* @param  (String) leftMargin  -  Left image margin. (optional) 
* @param  (String) rightMargin  -  Right image margin. (optional) 
* @param  (String) topMargin  -  Top image margin. (optional) 
* @param  (String) bottomMargin  -  Bottom image margin. (optional) 
* @param  (String) orientation  -  Image orientation. Possible values are: None, Landscape, Portait. (optional) 
* @param  (Boolean) skipBlankPages  -  Skip blank pages flag. (optional) 
* @param  (String) width  -  Image width. (optional) 
* @param  (String) height  -  Image height. (optional) 
* @param  (String) xResolution  -  Horizontal resolution. (optional) 
* @param  (String) yResolution  -  Vertical resolution. (optional) 
* @param  (String) pageIndex  -  Start page to export. (optional) 
* @param  (String) pageCount  -  Number of pages to export. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (TiffExportOptions) body  -  with tiff export options. (required) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PutDocumentSaveAsTiff = function(name, resultFile, brightness, compression, colorDepth, leftMargin, rightMargin, topMargin, bottomMargin, orientation, skipBlankPages, width, height, xResolution, yResolution, pageIndex, pageCount, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }                   	
		
	var resourcePath = '/pdf/{name}/SaveAs/tiff/?appSid={appSid}&amp;resultFile={resultFile}&amp;brightness={brightness}&amp;compression={compression}&amp;colorDepth={colorDepth}&amp;leftMargin={leftMargin}&amp;rightMargin={rightMargin}&amp;topMargin={topMargin}&amp;bottomMargin={bottomMargin}&amp;orientation={orientation}&amp;skipBlankPages={skipBlankPages}&amp;width={width}&amp;height={height}&amp;xResolution={xResolution}&amp;yResolution={yResolution}&amp;pageIndex={pageIndex}&amp;pageCount={pageCount}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resultFile !== 'undefined' &&  resultFile !== null && resultFile!== ''){            
			resourcePath = resourcePath.replace("{" + "resultFile" + "}" , resultFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resultFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof brightness !== 'undefined' &&  brightness !== null && brightness!== ''){            
			resourcePath = resourcePath.replace("{" + "brightness" + "}" , brightness);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]brightness.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof compression !== 'undefined' &&  compression !== null && compression!== ''){            
			resourcePath = resourcePath.replace("{" + "compression" + "}" , compression);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]compression.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof colorDepth !== 'undefined' &&  colorDepth !== null && colorDepth!== ''){            
			resourcePath = resourcePath.replace("{" + "colorDepth" + "}" , colorDepth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]colorDepth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof leftMargin !== 'undefined' &&  leftMargin !== null && leftMargin!== ''){            
			resourcePath = resourcePath.replace("{" + "leftMargin" + "}" , leftMargin);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]leftMargin.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rightMargin !== 'undefined' &&  rightMargin !== null && rightMargin!== ''){            
			resourcePath = resourcePath.replace("{" + "rightMargin" + "}" , rightMargin);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rightMargin.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof topMargin !== 'undefined' &&  topMargin !== null && topMargin!== ''){            
			resourcePath = resourcePath.replace("{" + "topMargin" + "}" , topMargin);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]topMargin.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof bottomMargin !== 'undefined' &&  bottomMargin !== null && bottomMargin!== ''){            
			resourcePath = resourcePath.replace("{" + "bottomMargin" + "}" , bottomMargin);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]bottomMargin.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof orientation !== 'undefined' &&  orientation !== null && orientation!== ''){            
			resourcePath = resourcePath.replace("{" + "orientation" + "}" , orientation);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]orientation.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof skipBlankPages !== 'undefined' &&  skipBlankPages !== null && skipBlankPages!== ''){            
			resourcePath = resourcePath.replace("{" + "skipBlankPages" + "}" , skipBlankPages);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]skipBlankPages.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof xResolution !== 'undefined' &&  xResolution !== null && xResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "xResolution" + "}" , xResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]xResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof yResolution !== 'undefined' &&  yResolution !== null && yResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "yResolution" + "}" , yResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]yResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageIndex !== 'undefined' &&  pageIndex !== null && pageIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pageIndex" + "}" , pageIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageCount !== 'undefined' &&  pageCount !== null && pageCount!== ''){            
			resourcePath = resourcePath.replace("{" + "pageCount" + "}" , pageCount);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageCount.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostAppendDocument
* Append document to existing one.
*
* @param  (String) name  -  The original document name. (required) 
* @param  (String) appendFile  -  Append file server path. (optional) 
* @param  (String) startPage  -  Appending start page. (optional) 
* @param  (String) endPage  -  Appending end page. (optional) 
* @param  (String) storage  -  The documents storage. (optional) 
* @param  (String) folder  -  The original document folder. (optional) 
* @param  (AppendDocument) body  -  with the append document data. (required) 
* @returns DocumentResponse (Map)
*/
PdfApi.prototype.PostAppendDocument = function(name, appendFile, startPage, endPage, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/pdf/{name}/appendDocument/?appSid={appSid}&amp;appendFile={appendFile}&amp;startPage={startPage}&amp;endPage={endPage}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof appendFile !== 'undefined' &&  appendFile !== null && appendFile!== ''){            
			resourcePath = resourcePath.replace("{" + "appendFile" + "}" , appendFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]appendFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startPage !== 'undefined' &&  startPage !== null && startPage!== ''){            
			resourcePath = resourcePath.replace("{" + "startPage" + "}" , startPage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startPage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endPage !== 'undefined' &&  endPage !== null && endPage!== ''){            
			resourcePath = resourcePath.replace("{" + "endPage" + "}" , endPage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endPage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentAttachments
* Read document attachments info.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns AttachmentsResponse (Map)
*/
PdfApi.prototype.GetDocumentAttachments = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/attachments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentAttachmentByIndex
* Read document attachment info by its index.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) attachmentIndex  -  The attachment index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns AttachmentResponse (Map)
*/
PdfApi.prototype.GetDocumentAttachmentByIndex = function(name, attachmentIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof attachmentIndex === 'undefined' || attachmentIndex === null && attachmentIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/attachments/{attachmentIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof attachmentIndex !== 'undefined' &&  attachmentIndex !== null && attachmentIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "attachmentIndex" + "}" , attachmentIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]attachmentIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDownloadDocumentAttachmentByIndex
* Download document attachment content by its index.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) attachmentIndex  -  The attachment index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetDownloadDocumentAttachmentByIndex = function(name, attachmentIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof attachmentIndex === 'undefined' || attachmentIndex === null && attachmentIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/attachments/{attachmentIndex}/download/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof attachmentIndex !== 'undefined' &&  attachmentIndex !== null && attachmentIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "attachmentIndex" + "}" , attachmentIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]attachmentIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentBookmarks
* Read document bookmarks.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns BookmarksResponse (Map)
*/
PdfApi.prototype.GetDocumentBookmarks = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/bookmarks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentBookmarksChildren
* Read document bookmark/bookmarks (including children).
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) bookmarkPath  -  The bookmark path. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetDocumentBookmarksChildren = function(name, bookmarkPath, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/bookmarks/{bookmarkPath}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof bookmarkPath !== 'undefined' &&  bookmarkPath !== null && bookmarkPath!== ''){            
			resourcePath = resourcePath.replace("{" + "bookmarkPath" + "}" , bookmarkPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]bookmarkPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperties
* Read document properties.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns DocumentPropertiesResponse (Map)
*/
PdfApi.prototype.GetDocumentProperties = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProperties
* Delete document properties.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.DeleteProperties = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperty
* Read document property by name.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns DocumentPropertyResponse (Map)
*/
PdfApi.prototype.GetDocumentProperty = function(name, propertyName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutSetProperty
* Add/update document property.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (DocumentProperty) body  -   (required) 
* @returns DocumentPropertyResponse (Map)
*/
PdfApi.prototype.PutSetProperty = function(name, propertyName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProperty
* Delete document property.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.DeleteProperty = function(name, propertyName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCreateField
* Create field.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) page  -  Document page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Field) body  -  with the field data. (required) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PostCreateField = function(name, page, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof page === 'undefined' || page === null && page === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/fields/?appSid={appSid}&amp;page={page}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof page !== 'undefined' &&  page !== null && page!== ''){            
			resourcePath = resourcePath.replace("{" + "page" + "}" , page);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]page.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetFields
* Get document fields.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns FieldsResponse (Map)
*/
PdfApi.prototype.GetFields = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutUpdateFields
* Update fields.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Fields) body  -  with the fields data. (required) 
* @returns FieldsResponse (Map)
*/
PdfApi.prototype.PutUpdateFields = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetField
* Get document field by name.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) fieldName  -  The field name/ (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns FieldResponse (Map)
*/
PdfApi.prototype.GetField = function(name, fieldName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fieldName === 'undefined' || fieldName === null && fieldName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fieldName !== 'undefined' &&  fieldName !== null && fieldName!== ''){            
			resourcePath = resourcePath.replace("{" + "fieldName" + "}" , fieldName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fieldName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutUpdateField
* Update field.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (String) fieldName  -   (required) 
* @param  (Field) body  -  with the field data. (required) 
* @returns FieldResponse (Map)
*/
PdfApi.prototype.PutUpdateField = function(name, storage, folder, fieldName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   
	if( typeof fieldName === 'undefined' || fieldName === null && fieldName === ''){
		throw new Error('missing required parameters.');
    } 	
		
	var resourcePath = '/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fieldName !== 'undefined' &&  fieldName !== null && fieldName!== ''){            
			resourcePath = resourcePath.replace("{" + "fieldName" + "}" , fieldName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fieldName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutMergeDocuments
* Merge a list of documents.
*
* @param  (String) name  -  Resulting documen name. (required) 
* @param  (String) storage  -  Resulting document storage. (optional) 
* @param  (String) folder  -  Resulting document folder. (optional) 
* @param  (MergeDocuments) body  -  with a list of documents. (required) 
* @returns DocumentResponse (Map)
*/
PdfApi.prototype.PutMergeDocuments = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/merge/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPages
* Read document pages info.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns DocumentPagesResponse (Map)
*/
PdfApi.prototype.GetPages = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutAddNewPage
* Add new page to end of the document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns DocumentPagesResponse (Map)
*/
PdfApi.prototype.PutAddNewPage = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWordsPerPage
* Get number of words per document page.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns WordCountResponse (Map)
*/
PdfApi.prototype.GetWordsPerPage = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/wordCount/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPage
* Read document page info.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetPage = function(name, pageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeletePage
* Delete document page by its number.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.DeletePage = function(name, pageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageWithFormat
* Convert document page to format specified.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) format  -  The format to convert if specified. (required) 
* @param  (String) width  -  The converted image width. (optional) 
* @param  (String) height  -  The converted image height. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetPageWithFormat = function(name, pageNumber, format, width, height, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageAnnotations
* Read documant page annotations.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns AnnotationsResponse (Map)
*/
PdfApi.prototype.GetPageAnnotations = function(name, pageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/annotations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageAnnotation
* Read document page annotation by its number.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) annotationNumber  -  The annotation number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns AnnotationResponse (Map)
*/
PdfApi.prototype.GetPageAnnotation = function(name, pageNumber, annotationNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof annotationNumber === 'undefined' || annotationNumber === null && annotationNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof annotationNumber !== 'undefined' &&  annotationNumber !== null && annotationNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "annotationNumber" + "}" , annotationNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]annotationNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetFragments
* Read page fragments.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) withEmpty  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemsResponse (Map)
*/
PdfApi.prototype.GetFragments = function(name, pageNumber, withEmpty, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof withEmpty !== 'undefined' &&  withEmpty !== null && withEmpty!== ''){            
			resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , withEmpty);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]withEmpty.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetFragment
* Read page fragment.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) fragmentNumber  -   (required) 
* @param  (String) withEmpty  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemsResponse (Map)
*/
PdfApi.prototype.GetFragment = function(name, pageNumber, fragmentNumber, withEmpty, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fragmentNumber === 'undefined' || fragmentNumber === null && fragmentNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fragmentNumber !== 'undefined' &&  fragmentNumber !== null && fragmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , fragmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fragmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof withEmpty !== 'undefined' &&  withEmpty !== null && withEmpty!== ''){            
			resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , withEmpty);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]withEmpty.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetSegments
* Read fragment segments.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) fragmentNumber  -   (required) 
* @param  (String) withEmpty  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemsResponse (Map)
*/
PdfApi.prototype.GetSegments = function(name, pageNumber, fragmentNumber, withEmpty, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fragmentNumber === 'undefined' || fragmentNumber === null && fragmentNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fragmentNumber !== 'undefined' &&  fragmentNumber !== null && fragmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , fragmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fragmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof withEmpty !== 'undefined' &&  withEmpty !== null && withEmpty!== ''){            
			resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , withEmpty);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]withEmpty.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetSegment
* Read segment.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) fragmentNumber  -   (required) 
* @param  (String) segmentNumber  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemResponse (Map)
*/
PdfApi.prototype.GetSegment = function(name, pageNumber, fragmentNumber, segmentNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fragmentNumber === 'undefined' || fragmentNumber === null && fragmentNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof segmentNumber === 'undefined' || segmentNumber === null && segmentNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fragmentNumber !== 'undefined' &&  fragmentNumber !== null && fragmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , fragmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fragmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof segmentNumber !== 'undefined' &&  segmentNumber !== null && segmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "segmentNumber" + "}" , segmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]segmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetSegmentTextFormat
* Read segment text format.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) fragmentNumber  -   (required) 
* @param  (String) segmentNumber  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextFormatResponse (Map)
*/
PdfApi.prototype.GetSegmentTextFormat = function(name, pageNumber, fragmentNumber, segmentNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fragmentNumber === 'undefined' || fragmentNumber === null && fragmentNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof segmentNumber === 'undefined' || segmentNumber === null && segmentNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fragmentNumber !== 'undefined' &&  fragmentNumber !== null && fragmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , fragmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fragmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof segmentNumber !== 'undefined' &&  segmentNumber !== null && segmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "segmentNumber" + "}" , segmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]segmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetFragmentTextFormat
* Read page fragment text format.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) fragmentNumber  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextFormatResponse (Map)
*/
PdfApi.prototype.GetFragmentTextFormat = function(name, pageNumber, fragmentNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof fragmentNumber === 'undefined' || fragmentNumber === null && fragmentNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fragmentNumber !== 'undefined' &&  fragmentNumber !== null && fragmentNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , fragmentNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fragmentNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImages
* Read document images.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ImagesResponse (Map)
*/
PdfApi.prototype.GetImages = function(name, pageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/images/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostReplaceImage
* Replace document image.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) imageNumber  -  The image number. (required) 
* @param  (String) imageFile  -  Path to image file if specified. Request content is used otherwise. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (File) file  -   (required) 
* @returns ImageResponse (Map)
*/
PdfApi.prototype.PostReplaceImage = function(name, pageNumber, imageNumber, imageFile, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof imageNumber === 'undefined' || imageNumber === null && imageNumber === ''){
		throw new Error('missing required parameters.');
    }    	
	
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageNumber !== 'undefined' &&  imageNumber !== null && imageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , imageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageFile !== 'undefined' &&  imageFile !== null && imageFile!== ''){            
			resourcePath = resourcePath.replace("{" + "imageFile" + "}" , imageFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImage
* Read document image by number.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) imageNumber  -  The image format. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetImage = function(name, pageNumber, imageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof imageNumber === 'undefined' || imageNumber === null && imageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageNumber !== 'undefined' &&  imageNumber !== null && imageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , imageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetImageWithFormat
* Extract document image in format specified.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) imageNumber  -  The image format. (required) 
* @param  (String) format  -  Image format to convert, if not specified the common image data is read. (required) 
* @param  (String) width  -  The converted image width. (optional) 
* @param  (String) height  -  The converted image height. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
PdfApi.prototype.GetImageWithFormat = function(name, pageNumber, imageNumber, format, width, height, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof imageNumber === 'undefined' || imageNumber === null && imageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?toFormat={toFormat}&amp;appSid={appSid}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageNumber !== 'undefined' &&  imageNumber !== null && imageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , imageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetExtractBarcodes
* Recognize barcodes.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) pageNumber  -  Page number. (required) 
* @param  (String) imageNumber  -  Image number. (required) 
* @param  (String) storage  -  Document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns BarcodeResponseList (Map)
*/
PdfApi.prototype.GetExtractBarcodes = function(name, pageNumber, imageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof imageNumber === 'undefined' || imageNumber === null && imageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageNumber !== 'undefined' &&  imageNumber !== null && imageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , imageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageLinkAnnotations
* Read document page link annotations.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns LinkAnnotationsResponse (Map)
*/
PdfApi.prototype.GetPageLinkAnnotations = function(name, pageNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/links/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageLinkAnnotationByIndex
* Read document page link annotation by its index.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) linkIndex  -  The link index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns LinkAnnotationResponse (Map)
*/
PdfApi.prototype.GetPageLinkAnnotationByIndex = function(name, pageNumber, linkIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof linkIndex === 'undefined' || linkIndex === null && linkIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/links/{linkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof linkIndex !== 'undefined' &&  linkIndex !== null && linkIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "linkIndex" + "}" , linkIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]linkIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostMovePage
* Move page to new position.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) newIndex  -  The new page position/index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PostMovePage = function(name, pageNumber, newIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newIndex === 'undefined' || newIndex === null && newIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/movePage/?newIndex={newIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newIndex !== 'undefined' &&  newIndex !== null && newIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "newIndex" + "}" , newIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostPageReplaceText
* Page&#39;s replace text method.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (TextReplace) body  -   (required) 
* @returns PageTextReplaceResponse (Map)
*/
PdfApi.prototype.PostPageReplaceText = function(name, pageNumber, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostPageReplaceTextList
* Page&#39;s replace text method.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (TextReplaceListRequest) body  -   (required) 
* @returns PageTextReplaceResponse (Map)
*/
PdfApi.prototype.PostPageReplaceTextList = function(name, pageNumber, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSignPage
* Sign page.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Signature) body  -  with the signature data. (required) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PostSignPage = function(name, pageNumber, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutPageAddStamp
* Add page stamp.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) pageNumber  -  The page number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Stamp) body  -  with data. (required) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PutPageAddStamp = function(name, pageNumber, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/stamp/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetPageTextItems
* Read page text items.
*
* @param  (String) name  -   (required) 
* @param  (String) pageNumber  -   (required) 
* @param  (String) withEmpty  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemsResponse (Map)
*/
PdfApi.prototype.GetPageTextItems = function(name, pageNumber, withEmpty, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pageNumber === 'undefined' || pageNumber === null && pageNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/pages/{pageNumber}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pageNumber !== 'undefined' &&  pageNumber !== null && pageNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , pageNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pageNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof withEmpty !== 'undefined' &&  withEmpty !== null && withEmpty!== ''){            
			resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , withEmpty);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]withEmpty.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostDocumentReplaceText
* Document&#39;s replace text method.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (TextReplace) body  -   (required) 
* @returns DocumentTextReplaceResponse (Map)
*/
PdfApi.prototype.PostDocumentReplaceText = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostDocumentReplaceTextList
* Document&#39;s replace text method.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (TextReplaceListRequest) body  -   (required) 
* @returns DocumentTextReplaceResponse (Map)
*/
PdfApi.prototype.PostDocumentReplaceTextList = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSignDocument
* Sign document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Signature) body  -  with signature data. (required) 
* @returns SaaSposeResponse (Map)
*/
PdfApi.prototype.PostSignDocument = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/pdf/{name}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSplitDocument
* Split document to parts.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) format  -  Resulting documents format. (optional) 
* @param  (String) from  -  Start page if defined. (optional) 
* @param  (String) to  -  End page if defined. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SplitResultResponse (Map)
*/
PdfApi.prototype.PostSplitDocument = function(name, format, from, to, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/pdf/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof from !== 'undefined' &&  from !== null && from!== ''){            
			resourcePath = resourcePath.replace("{" + "from" + "}" , from);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]from.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof to !== 'undefined' &&  to !== null && to!== ''){            
			resourcePath = resourcePath.replace("{" + "to" + "}" , to);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]to.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTextItems
* Read document text items.
*
* @param  (String) name  -   (required) 
* @param  (String) withEmpty  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TextItemsResponse (Map)
*/
PdfApi.prototype.GetTextItems = function(name, withEmpty, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/pdf/{name}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof withEmpty !== 'undefined' &&  withEmpty !== null && withEmpty!== ''){            
			resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , withEmpty);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]withEmpty.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    

module.exports = PdfApi


