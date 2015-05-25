package com.aspose.pdf.api;

import com.aspose.pdf.client.ApiException;
import com.aspose.pdf.client.ApiInvoker;
import com.aspose.pdf.client.ApiInvokerResponse;
import com.aspose.pdf.model.BookmarksResponse;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.pdf.model.PageTextReplaceResponse;
import com.aspose.pdf.model.AttachmentsResponse;
import com.aspose.pdf.model.AttachmentResponse;
import com.aspose.pdf.model.TextItemsResponse;
import com.aspose.pdf.model.FieldResponse;
import com.aspose.pdf.model.Fields;
import com.aspose.pdf.model.WordCountResponse;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.DocumentPagesResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.pdf.model.AppendDocument;
import com.aspose.pdf.model.TextReplace;
import com.aspose.pdf.model.MergeDocuments;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.AnnotationsResponse;
import com.aspose.pdf.model.TextFormatResponse;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.pdf.model.BarcodeResponseList;
import com.aspose.pdf.model.FieldsResponse;
import com.aspose.pdf.model.TextReplaceListRequest;
import com.aspose.pdf.model.TextItemResponse;
import com.aspose.pdf.model.LinkAnnotationsResponse;
import com.aspose.pdf.model.DocumentPropertiesResponse;
import com.aspose.pdf.model.LinkAnnotationResponse;
import com.aspose.pdf.model.TiffExportOptions;
import com.aspose.pdf.model.DocumentTextReplaceResponse;
import com.aspose.pdf.model.SplitResultResponse;
import com.aspose.pdf.model.AnnotationResponse;
import com.aspose.pdf.model.ImagesResponse;
import com.aspose.pdf.model.Signature;
import com.aspose.pdf.model.ImageResponse;
import com.sun.jersey.multipart.FormDataMultiPart;

import javax.ws.rs.core.MediaType;

import java.io.File;
import java.util.*;

public class PdfApi {
  String basePath = "http://api.aspose.com/v1.1";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();
  ApiInvokerResponse response = null;

  public PdfApi(String basePath, String apiKey, String appSid) {
    this.basePath = basePath;
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public PdfApi(String basePath, String apiKey, String appSid, boolean isDebug) {
          this.basePath = basePath;
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
   }

  public PdfApi(String apiKey, String appSid) {
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public PdfApi(String apiKey, String appSid, boolean isDebug) {
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
   }
  
  public ApiInvoker getInvoker() {
    return apiInvoker;
  }
  
  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }
  
  public String getBasePath() {
    return basePath;
  }

  /**
	* GetPageAnnotation
	* Read document page annotation by its number.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param annotationNumber	Integer	The annotation number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return AnnotationResponse
	*/

  public AnnotationResponse GetPageAnnotation (String name, Integer pageNumber, Integer annotationNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || annotationNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(annotationNumber!=null)
	  resourcePath = resourcePath.replace("{" + "annotationNumber" + "}" , apiInvoker.toPathValue(annotationNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]annotationNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AnnotationResponse) ApiInvoker.deserialize(response, "", AnnotationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPageAnnotations
	* Read documant page annotations.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return AnnotationsResponse
	*/

  public AnnotationsResponse GetPageAnnotations (String name, Integer pageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/annotations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AnnotationsResponse) ApiInvoker.deserialize(response, "", AnnotationsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentAttachmentByIndex
	* Read document attachment info by its index.
	* @param name	String	The document name.
	* @param attachmentIndex	Integer	The attachment index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return AttachmentResponse
	*/

  public AttachmentResponse GetDocumentAttachmentByIndex (String name, Integer attachmentIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || attachmentIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/attachments/{attachmentIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(attachmentIndex!=null)
	  resourcePath = resourcePath.replace("{" + "attachmentIndex" + "}" , apiInvoker.toPathValue(attachmentIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]attachmentIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AttachmentResponse) ApiInvoker.deserialize(response, "", AttachmentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentAttachments
	* Read document attachments info.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return AttachmentsResponse
	*/

  public AttachmentsResponse GetDocumentAttachments (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/attachments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AttachmentsResponse) ApiInvoker.deserialize(response, "", AttachmentsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDownloadDocumentAttachmentByIndex
	* Download document attachment content by its index.
	* @param name	String	The document name.
	* @param attachmentIndex	Integer	The attachment index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetDownloadDocumentAttachmentByIndex (String name, Integer attachmentIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || attachmentIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/attachments/{attachmentIndex}/download/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(attachmentIndex!=null)
	  resourcePath = resourcePath.replace("{" + "attachmentIndex" + "}" , apiInvoker.toPathValue(attachmentIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]attachmentIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetExtractBarcodes
	* Recognize barcodes.
	* @param name	String	Document name.
	* @param pageNumber	Integer	Page number.
	* @param imageNumber	Integer	Image number.
	* @param storage	String	Document storage.
	* @param folder	String	Document folder.
	* @return BarcodeResponseList
	*/

  public BarcodeResponseList GetExtractBarcodes (String name, Integer pageNumber, Integer imageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || imageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(imageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , apiInvoker.toPathValue(imageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (BarcodeResponseList) ApiInvoker.deserialize(response, "", BarcodeResponseList.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentBookmarks
	* Read document bookmarks.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return BookmarksResponse
	*/

  public BookmarksResponse GetDocumentBookmarks (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/bookmarks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (BookmarksResponse) ApiInvoker.deserialize(response, "", BookmarksResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentBookmarksChildren
	* Read document bookmark/bookmarks (including children).
	* @param name	String	The document name.
	* @param bookmarkPath	String	The bookmark path.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetDocumentBookmarksChildren (String name, String bookmarkPath, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/bookmarks/{bookmarkPath}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(bookmarkPath!=null)
	  resourcePath = resourcePath.replace("{" + "bookmarkPath" + "}" , apiInvoker.toPathValue(bookmarkPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]bookmarkPath.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocument
	* Read common document info.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetDocument (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentWithFormat
	* Read common document info or convert to some format if the format specified.
	* @param name	String	The document name.
	* @param format	String	The format to convert.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param outPath	String	Path to save result
	* @return ResponseMessage
	*/

  public ResponseMessage GetDocumentWithFormat (String name, String format, String storage, String folder, String outPath) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSignDocument
	* Sign document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Signature	with signature data.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostSignDocument (String name, String storage, String folder, Signature body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSplitDocument
	* Split document to parts.
	* @param name	String	Document name.
	* @param format	String	Resulting documents format.
	* @param from	Integer	Start page if defined.
	* @param to	Integer	End page if defined.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SplitResultResponse
	*/

  public SplitResultResponse PostSplitDocument (String name, String format, Integer from, Integer to, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(from!=null)
	  resourcePath = resourcePath.replace("{" + "from" + "}" , apiInvoker.toPathValue(from));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]from.*?(?=&|\\?|$)", "");
    if(to!=null)
	  resourcePath = resourcePath.replace("{" + "to" + "}" , apiInvoker.toPathValue(to));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]to.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SplitResultResponse) ApiInvoker.deserialize(response, "", SplitResultResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutConvertDocument
	* Convert document from request content to format specified.
	* @param format	String	The format to convert.
	* @param url	String	
	* @param outPath	String	Path to save result
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PutConvertDocument (String format, String url, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;url={url}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(url!=null)
	  resourcePath = resourcePath.replace("{" + "url" + "}" , apiInvoker.toPathValue(url));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]url.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutCreateDocument
	* Create new document.
	* @param name	String	The new document name.
	* @param templateFile	String	The template file server path if defined.
	* @param dataFile	String	The data file path (for xml template only).
	* @param templateType	String	The template type, can be xml or html.
	* @param storage	String	The document storage.
	* @param folder	String	The new document folder.
	* @return DocumentResponse
	*/

  public DocumentResponse PutCreateDocument (String name, String templateFile, String dataFile, String templateType, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;templateType={templateType}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(templateFile!=null)
	  resourcePath = resourcePath.replace("{" + "templateFile" + "}" , apiInvoker.toPathValue(templateFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]templateFile.*?(?=&|\\?|$)", "");
    if(dataFile!=null)
	  resourcePath = resourcePath.replace("{" + "dataFile" + "}" , apiInvoker.toPathValue(dataFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]dataFile.*?(?=&|\\?|$)", "");
    if(templateType!=null)
	  resourcePath = resourcePath.replace("{" + "templateType" + "}" , apiInvoker.toPathValue(templateType));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]templateType.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentResponse) ApiInvoker.deserialize(response, "", DocumentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostAppendDocument
	* Append document to existing one.
	* @param name	String	The original document name.
	* @param appendFile	String	Append file server path.
	* @param startPage	Integer	Appending start page.
	* @param endPage	Integer	Appending end page.
	* @param storage	String	The documents storage.
	* @param folder	String	The original document folder.
	* @param body	AppendDocument	with the append document data.
	* @return DocumentResponse
	*/

  public DocumentResponse PostAppendDocument (String name, String appendFile, Integer startPage, Integer endPage, String storage, String folder, AppendDocument body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/appendDocument/?appSid={appSid}&amp;appendFile={appendFile}&amp;startPage={startPage}&amp;endPage={endPage}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(appendFile!=null)
	  resourcePath = resourcePath.replace("{" + "appendFile" + "}" , apiInvoker.toPathValue(appendFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]appendFile.*?(?=&|\\?|$)", "");
    if(startPage!=null)
	  resourcePath = resourcePath.replace("{" + "startPage" + "}" , apiInvoker.toPathValue(startPage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startPage.*?(?=&|\\?|$)", "");
    if(endPage!=null)
	  resourcePath = resourcePath.replace("{" + "endPage" + "}" , apiInvoker.toPathValue(endPage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endPage.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentResponse) ApiInvoker.deserialize(response, "", DocumentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutMergeDocuments
	* Merge a list of documents.
	* @param name	String	Resulting documen name.
	* @param storage	String	Resulting document storage.
	* @param folder	String	Resulting document folder.
	* @param body	MergeDocuments	with a list of documents.
	* @return DocumentResponse
	*/

  public DocumentResponse PutMergeDocuments (String name, String storage, String folder, MergeDocuments body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/merge/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentResponse) ApiInvoker.deserialize(response, "", DocumentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutDocumentSaveAsTiff
	* Save document as Tiff image.
	* @param name	String	The document name.
	* @param resultFile	String	The resulting file.
	* @param brightness	Float	The image brightness.
	* @param compression	String	Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
	* @param colorDepth	String	Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
	* @param leftMargin	Integer	Left image margin.
	* @param rightMargin	Integer	Right image margin.
	* @param topMargin	Integer	Top image margin.
	* @param bottomMargin	Integer	Bottom image margin.
	* @param orientation	String	Image orientation. Possible values are: None, Landscape, Portait.
	* @param skipBlankPages	Boolean	Skip blank pages flag.
	* @param width	Integer	Image width.
	* @param height	Integer	Image height.
	* @param xResolution	Integer	Horizontal resolution.
	* @param yResolution	Integer	Vertical resolution.
	* @param pageIndex	Integer	Start page to export.
	* @param pageCount	Integer	Number of pages to export.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	TiffExportOptions	with tiff export options.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutDocumentSaveAsTiff (String name, String resultFile, Float brightness, String compression, String colorDepth, Integer leftMargin, Integer rightMargin, Integer topMargin, Integer bottomMargin, String orientation, Boolean skipBlankPages, Integer width, Integer height, Integer xResolution, Integer yResolution, Integer pageIndex, Integer pageCount, String storage, String folder, TiffExportOptions body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/SaveAs/tiff/?appSid={appSid}&amp;resultFile={resultFile}&amp;brightness={brightness}&amp;compression={compression}&amp;colorDepth={colorDepth}&amp;leftMargin={leftMargin}&amp;rightMargin={rightMargin}&amp;topMargin={topMargin}&amp;bottomMargin={bottomMargin}&amp;orientation={orientation}&amp;skipBlankPages={skipBlankPages}&amp;width={width}&amp;height={height}&amp;xResolution={xResolution}&amp;yResolution={yResolution}&amp;pageIndex={pageIndex}&amp;pageCount={pageCount}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(resultFile!=null)
	  resourcePath = resourcePath.replace("{" + "resultFile" + "}" , apiInvoker.toPathValue(resultFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]resultFile.*?(?=&|\\?|$)", "");
    if(brightness!=null)
	  resourcePath = resourcePath.replace("{" + "brightness" + "}" , apiInvoker.toPathValue(brightness));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]brightness.*?(?=&|\\?|$)", "");
    if(compression!=null)
	  resourcePath = resourcePath.replace("{" + "compression" + "}" , apiInvoker.toPathValue(compression));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]compression.*?(?=&|\\?|$)", "");
    if(colorDepth!=null)
	  resourcePath = resourcePath.replace("{" + "colorDepth" + "}" , apiInvoker.toPathValue(colorDepth));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]colorDepth.*?(?=&|\\?|$)", "");
    if(leftMargin!=null)
	  resourcePath = resourcePath.replace("{" + "leftMargin" + "}" , apiInvoker.toPathValue(leftMargin));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]leftMargin.*?(?=&|\\?|$)", "");
    if(rightMargin!=null)
	  resourcePath = resourcePath.replace("{" + "rightMargin" + "}" , apiInvoker.toPathValue(rightMargin));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rightMargin.*?(?=&|\\?|$)", "");
    if(topMargin!=null)
	  resourcePath = resourcePath.replace("{" + "topMargin" + "}" , apiInvoker.toPathValue(topMargin));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]topMargin.*?(?=&|\\?|$)", "");
    if(bottomMargin!=null)
	  resourcePath = resourcePath.replace("{" + "bottomMargin" + "}" , apiInvoker.toPathValue(bottomMargin));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]bottomMargin.*?(?=&|\\?|$)", "");
    if(orientation!=null)
	  resourcePath = resourcePath.replace("{" + "orientation" + "}" , apiInvoker.toPathValue(orientation));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]orientation.*?(?=&|\\?|$)", "");
    if(skipBlankPages!=null)
	  resourcePath = resourcePath.replace("{" + "skipBlankPages" + "}" , apiInvoker.toPathValue(skipBlankPages));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]skipBlankPages.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(xResolution!=null)
	  resourcePath = resourcePath.replace("{" + "xResolution" + "}" , apiInvoker.toPathValue(xResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]xResolution.*?(?=&|\\?|$)", "");
    if(yResolution!=null)
	  resourcePath = resourcePath.replace("{" + "yResolution" + "}" , apiInvoker.toPathValue(yResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]yResolution.*?(?=&|\\?|$)", "");
    if(pageIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pageIndex" + "}" , apiInvoker.toPathValue(pageIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageIndex.*?(?=&|\\?|$)", "");
    if(pageCount!=null)
	  resourcePath = resourcePath.replace("{" + "pageCount" + "}" , apiInvoker.toPathValue(pageCount));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageCount.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetField
	* Get document field by name.
	* @param name	String	The document name.
	* @param fieldName	String	The field name/
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return FieldResponse
	*/

  public FieldResponse GetField (String name, String fieldName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || fieldName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(fieldName!=null)
	  resourcePath = resourcePath.replace("{" + "fieldName" + "}" , apiInvoker.toPathValue(fieldName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fieldName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (FieldResponse) ApiInvoker.deserialize(response, "", FieldResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetFields
	* Get document fields.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return FieldsResponse
	*/

  public FieldsResponse GetFields (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (FieldsResponse) ApiInvoker.deserialize(response, "", FieldsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCreateField
	* Create field.
	* @param name	String	The document name.
	* @param page	Integer	Document page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Field	with the field data.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostCreateField (String name, Integer page, String storage, String folder, Field body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || page == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;page={page}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(page!=null)
	  resourcePath = resourcePath.replace("{" + "page" + "}" , apiInvoker.toPathValue(page));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]page.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutUpdateField
	* Update field.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param fieldName	String	
	* @param body	Field	with the field data.
	* @return FieldResponse
	*/

  public FieldResponse PutUpdateField (String name, String storage, String folder, String fieldName, Field body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || fieldName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(fieldName!=null)
	  resourcePath = resourcePath.replace("{" + "fieldName" + "}" , apiInvoker.toPathValue(fieldName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fieldName.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (FieldResponse) ApiInvoker.deserialize(response, "", FieldResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutUpdateFields
	* Update fields.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Fields	with the fields data.
	* @return FieldsResponse
	*/

  public FieldsResponse PutUpdateFields (String name, String storage, String folder, Fields body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (FieldsResponse) ApiInvoker.deserialize(response, "", FieldsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetFragment
	* Read page fragment.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param fragmentNumber	Integer	
	* @param withEmpty	String	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetFragment (String name, Integer pageNumber, Integer fragmentNumber, String withEmpty, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || fragmentNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(fragmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , apiInvoker.toPathValue(fragmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fragmentNumber.*?(?=&|\\?|$)", "");
    if(withEmpty!=null)
	  resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , apiInvoker.toPathValue(withEmpty));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]withEmpty.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetFragments
	* Read page fragments.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param withEmpty	String	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetFragments (String name, Integer pageNumber, String withEmpty, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(withEmpty!=null)
	  resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , apiInvoker.toPathValue(withEmpty));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]withEmpty.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetFragmentTextFormat
	* Read page fragment text format.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param fragmentNumber	Integer	
	* @param storage	String	
	* @param folder	String	
	* @return TextFormatResponse
	*/

  public TextFormatResponse GetFragmentTextFormat (String name, Integer pageNumber, Integer fragmentNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || fragmentNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(fragmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , apiInvoker.toPathValue(fragmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fragmentNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextFormatResponse) ApiInvoker.deserialize(response, "", TextFormatResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetSegment
	* Read segment.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param fragmentNumber	Integer	
	* @param segmentNumber	Integer	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemResponse
	*/

  public TextItemResponse GetSegment (String name, Integer pageNumber, Integer fragmentNumber, Integer segmentNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || fragmentNumber == null || segmentNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(fragmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , apiInvoker.toPathValue(fragmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fragmentNumber.*?(?=&|\\?|$)", "");
    if(segmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "segmentNumber" + "}" , apiInvoker.toPathValue(segmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]segmentNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemResponse) ApiInvoker.deserialize(response, "", TextItemResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetSegments
	* Read fragment segments.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param fragmentNumber	Integer	
	* @param withEmpty	String	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetSegments (String name, Integer pageNumber, Integer fragmentNumber, String withEmpty, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || fragmentNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(fragmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , apiInvoker.toPathValue(fragmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fragmentNumber.*?(?=&|\\?|$)", "");
    if(withEmpty!=null)
	  resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , apiInvoker.toPathValue(withEmpty));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]withEmpty.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetSegmentTextFormat
	* Read segment text format.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param fragmentNumber	Integer	
	* @param segmentNumber	Integer	
	* @param storage	String	
	* @param folder	String	
	* @return TextFormatResponse
	*/

  public TextFormatResponse GetSegmentTextFormat (String name, Integer pageNumber, Integer fragmentNumber, Integer segmentNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || fragmentNumber == null || segmentNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/texttoFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(fragmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "fragmentNumber" + "}" , apiInvoker.toPathValue(fragmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]fragmentNumber.*?(?=&|\\?|$)", "");
    if(segmentNumber!=null)
	  resourcePath = resourcePath.replace("{" + "segmentNumber" + "}" , apiInvoker.toPathValue(segmentNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]segmentNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextFormatResponse) ApiInvoker.deserialize(response, "", TextFormatResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImage
	* Read document image by number.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param imageNumber	Integer	The image format.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetImage (String name, Integer pageNumber, Integer imageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || imageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(imageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , apiInvoker.toPathValue(imageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImages
	* Read document images.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ImagesResponse
	*/

  public ImagesResponse GetImages (String name, Integer pageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/images/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ImagesResponse) ApiInvoker.deserialize(response, "", ImagesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetImageWithFormat
	* Extract document image in format specified.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param imageNumber	Integer	The image format.
	* @param format	String	Image format to convert, if not specified the common image data is read.
	* @param width	Integer	The converted image width.
	* @param height	Integer	The converted image height.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetImageWithFormat (String name, Integer pageNumber, Integer imageNumber, String format, Integer width, Integer height, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || imageNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?toFormat={toFormat}&amp;appSid={appSid}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(imageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , apiInvoker.toPathValue(imageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostReplaceImage
	* Replace document image.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param imageNumber	Integer	The image number.
	* @param imageFile	String	Path to image file if specified. Request content is used otherwise.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param file	File	
	* @return ImageResponse
	*/

  public ImageResponse PostReplaceImage (String name, Integer pageNumber, Integer imageNumber, String imageFile, String storage, String folder, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || imageNumber == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(imageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "imageNumber" + "}" , apiInvoker.toPathValue(imageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageNumber.*?(?=&|\\?|$)", "");
    if(imageFile!=null)
	  resourcePath = resourcePath.replace("{" + "imageFile" + "}" , apiInvoker.toPathValue(imageFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageFile.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ImageResponse) ApiInvoker.deserialize(response, "", ImageResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPageLinkAnnotationByIndex
	* Read document page link annotation by its index.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param linkIndex	Integer	The link index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return LinkAnnotationResponse
	*/

  public LinkAnnotationResponse GetPageLinkAnnotationByIndex (String name, Integer pageNumber, Integer linkIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || linkIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/links/{linkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(linkIndex!=null)
	  resourcePath = resourcePath.replace("{" + "linkIndex" + "}" , apiInvoker.toPathValue(linkIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]linkIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (LinkAnnotationResponse) ApiInvoker.deserialize(response, "", LinkAnnotationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPageLinkAnnotations
	* Read document page link annotations.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return LinkAnnotationsResponse
	*/

  public LinkAnnotationsResponse GetPageLinkAnnotations (String name, Integer pageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/links/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (LinkAnnotationsResponse) ApiInvoker.deserialize(response, "", LinkAnnotationsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeletePage
	* Delete document page by its number.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeletePage (String name, Integer pageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPage
	* Read document page info.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetPage (String name, Integer pageNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPages
	* Read document pages info.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return DocumentPagesResponse
	*/

  public DocumentPagesResponse GetPages (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentPagesResponse) ApiInvoker.deserialize(response, "", DocumentPagesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPageWithFormat
	* Convert document page to format specified.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param format	String	The format to convert if specified.
	* @param width	Integer	The converted image width.
	* @param height	Integer	The converted image height.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetPageWithFormat (String name, Integer pageNumber, String format, Integer width, Integer height, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWordsPerPage
	* Get number of words per document page.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return WordCountResponse
	*/

  public WordCountResponse GetWordsPerPage (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/wordCount/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (WordCountResponse) ApiInvoker.deserialize(response, "", WordCountResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostMovePage
	* Move page to new position.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param newIndex	Integer	The new page position/index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostMovePage (String name, Integer pageNumber, Integer newIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null || newIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/movePage/?newIndex={newIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(newIndex!=null)
	  resourcePath = resourcePath.replace("{" + "newIndex" + "}" , apiInvoker.toPathValue(newIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSignPage
	* Sign page.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Signature	with the signature data.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostSignPage (String name, Integer pageNumber, String storage, String folder, Signature body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || pageNumber == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutAddNewPage
	* Add new page to end of the document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return DocumentPagesResponse
	*/

  public DocumentPagesResponse PutAddNewPage (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentPagesResponse) ApiInvoker.deserialize(response, "", DocumentPagesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutPageAddStamp
	* Add page stamp.
	* @param name	String	The document name.
	* @param pageNumber	Integer	The page number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Stamp	with data.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutPageAddStamp (String name, Integer pageNumber, String storage, String folder, Stamp body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || pageNumber == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/stamp/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteProperties
	* Delete document properties.
	* @param name	String	
	* @param storage	String	
	* @param folder	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteProperties (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteProperty
	* Delete document property.
	* @param name	String	
	* @param propertyName	String	
	* @param storage	String	
	* @param folder	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteProperty (String name, String propertyName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || propertyName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentProperties
	* Read document properties.
	* @param name	String	
	* @param storage	String	
	* @param folder	String	
	* @return DocumentPropertiesResponse
	*/

  public DocumentPropertiesResponse GetDocumentProperties (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentPropertiesResponse) ApiInvoker.deserialize(response, "", DocumentPropertiesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentProperty
	* Read document property by name.
	* @param name	String	
	* @param propertyName	String	
	* @param storage	String	
	* @param folder	String	
	* @return DocumentPropertyResponse
	*/

  public DocumentPropertyResponse GetDocumentProperty (String name, String propertyName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || propertyName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentPropertyResponse) ApiInvoker.deserialize(response, "", DocumentPropertyResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutSetProperty
	* Add/update document property.
	* @param name	String	
	* @param propertyName	String	
	* @param storage	String	
	* @param folder	String	
	* @param body	DocumentProperty	
	* @return DocumentPropertyResponse
	*/

  public DocumentPropertyResponse PutSetProperty (String name, String propertyName, String storage, String folder, DocumentProperty body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || propertyName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentPropertyResponse) ApiInvoker.deserialize(response, "", DocumentPropertyResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetPageTextItems
	* Read page text items.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param withEmpty	String	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetPageTextItems (String name, Integer pageNumber, String withEmpty, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || pageNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(withEmpty!=null)
	  resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , apiInvoker.toPathValue(withEmpty));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]withEmpty.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetTextItems
	* Read document text items.
	* @param name	String	
	* @param withEmpty	String	
	* @param storage	String	
	* @param folder	String	
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetTextItems (String name, String withEmpty, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(withEmpty!=null)
	  resourcePath = resourcePath.replace("{" + "withEmpty" + "}" , apiInvoker.toPathValue(withEmpty));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]withEmpty.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostDocumentReplaceText
	* Document's replace text method.
	* @param name	String	
	* @param storage	String	
	* @param folder	String	
	* @param body	TextReplace	
	* @return DocumentTextReplaceResponse
	*/

  public DocumentTextReplaceResponse PostDocumentReplaceText (String name, String storage, String folder, TextReplace body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentTextReplaceResponse) ApiInvoker.deserialize(response, "", DocumentTextReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostDocumentReplaceTextList
	* Document's replace text method.
	* @param name	String	
	* @param storage	String	
	* @param folder	String	
	* @param body	TextReplaceListRequest	
	* @return DocumentTextReplaceResponse
	*/

  public DocumentTextReplaceResponse PostDocumentReplaceTextList (String name, String storage, String folder, TextReplaceListRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (DocumentTextReplaceResponse) ApiInvoker.deserialize(response, "", DocumentTextReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostPageReplaceText
	* Page's replace text method.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param storage	String	
	* @param folder	String	
	* @param body	TextReplace	
	* @return PageTextReplaceResponse
	*/

  public PageTextReplaceResponse PostPageReplaceText (String name, Integer pageNumber, String storage, String folder, TextReplace body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || pageNumber == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (PageTextReplaceResponse) ApiInvoker.deserialize(response, "", PageTextReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostPageReplaceTextList
	* Page's replace text method.
	* @param name	String	
	* @param pageNumber	Integer	
	* @param storage	String	
	* @param folder	String	
	* @param body	TextReplaceListRequest	
	* @return PageTextReplaceResponse
	*/

  public PageTextReplaceResponse PostPageReplaceTextList (String name, Integer pageNumber, String storage, String folder, TextReplaceListRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || pageNumber == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/pdf/{name}/pages/{pageNumber}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(pageNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pageNumber" + "}" , apiInvoker.toPathValue(pageNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pageNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (PageTextReplaceResponse) ApiInvoker.deserialize(response, "", PageTextReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  }

