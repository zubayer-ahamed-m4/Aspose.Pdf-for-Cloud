<?php

namespace Aspose\PDF;

use Aspose\PDF\ApiException as Exception;
use Aspose\PDF\ApiClient;

class PdfApi {

    function __construct() {
        $this->apiClient = new ApiClient();
    }

    /**
     * GetPageAnnotation
     * Read document page annotation by its number.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * annotationNumber, int: The annotation number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AnnotationResponse
     */
    public function GetPageAnnotation($name, $pageNumber, $annotationNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $annotationNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($annotationNumber != null) {
            $resourcePath = str_replace("{" . "annotationNumber" . "}", $this->apiClient->toQueryValue($annotationNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&annotationNumber={" . "annotationNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AnnotationResponse');
        return $responseObject;
    }

    /**
     * GetPageAnnotations
     * Read documant page annotations.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AnnotationsResponse
     */
    public function GetPageAnnotations($name, $pageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/annotations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AnnotationsResponse');
        return $responseObject;
    }

    /**
     * GetDocumentAttachmentByIndex
     * Read document attachment info by its index.
     * name, string: The document name. (required)

     * attachmentIndex, int: The attachment index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AttachmentResponse
     */
    public function GetDocumentAttachmentByIndex($name, $attachmentIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $attachmentIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/attachments/{attachmentIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($attachmentIndex != null) {
            $resourcePath = str_replace("{" . "attachmentIndex" . "}", $this->apiClient->toQueryValue($attachmentIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&attachmentIndex={" . "attachmentIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AttachmentResponse');
        return $responseObject;
    }

    /**
     * GetDocumentAttachments
     * Read document attachments info.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AttachmentsResponse
     */
    public function GetDocumentAttachments($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/attachments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AttachmentsResponse');
        return $responseObject;
    }

    /**
     * GetDownloadDocumentAttachmentByIndex
     * Download document attachment content by its index.
     * name, string: The document name. (required)

     * attachmentIndex, int: The attachment index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetDownloadDocumentAttachmentByIndex($name, $attachmentIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $attachmentIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/attachments/{attachmentIndex}/download/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($attachmentIndex != null) {
            $resourcePath = str_replace("{" . "attachmentIndex" . "}", $this->apiClient->toQueryValue($attachmentIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&attachmentIndex={" . "attachmentIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetExtractBarcodes
     * Recognize barcodes.
     * name, string: Document name. (required)

     * pageNumber, int: Page number. (required)

     * imageNumber, int: Image number. (required)

     * storage, string: Document storage. (optional)

     * folder, string: Document folder. (optional)

     * @return BarcodeResponseList
     */
    public function GetExtractBarcodes($name, $pageNumber, $imageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $imageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($imageNumber != null) {
            $resourcePath = str_replace("{" . "imageNumber" . "}", $this->apiClient->toQueryValue($imageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageNumber={" . "imageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'BarcodeResponseList');
        return $responseObject;
    }

    /**
     * GetDocumentBookmarks
     * Read document bookmarks.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return BookmarksResponse
     */
    public function GetDocumentBookmarks($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/bookmarks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'BookmarksResponse');
        return $responseObject;
    }

    /**
     * GetDocumentBookmarksChildren
     * Read document bookmark/bookmarks (including children).
     * name, string: The document name. (required)

     * bookmarkPath, string: The bookmark path. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetDocumentBookmarksChildren($name, $bookmarkPath = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/bookmarks/{bookmarkPath}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($bookmarkPath != null) {
            $resourcePath = str_replace("{" . "bookmarkPath" . "}", $this->apiClient->toQueryValue($bookmarkPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&bookmarkPath={" . "bookmarkPath" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetDocument
     * Read common document info.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetDocument($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetDocumentWithFormat
     * Read common document info or convert to some format if the format specified.
     * name, string: The document name. (required)

     * format, string: The format to convert. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * outPath, string: Path to save result (optional)

     * @return ResponseMessage
     */
    public function GetDocumentWithFormat($name, $format, $storage = null, $folder = null, $outPath = null) {
        // verify required params are set
        if ($name == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostSignDocument
     * Sign document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Signature: with signature data. (required)

     * @return SaaSposeResponse
     */
    public function PostSignDocument($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostSplitDocument
     * Split document to parts.
     * name, string: Document name. (required)

     * format, string: Resulting documents format. (optional)

     * from, int: Start page if defined. (optional)

     * to, int: End page if defined. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SplitResultResponse
     */
    public function PostSplitDocument($name, $format = null, $from = null, $to = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($from != null) {
            $resourcePath = str_replace("{" . "from" . "}", $this->apiClient->toQueryValue($from), $resourcePath);
        } else {
            $resourcePath = str_replace("&from={" . "from" . "}", "", $resourcePath);
        }
        if ($to != null) {
            $resourcePath = str_replace("{" . "to" . "}", $this->apiClient->toQueryValue($to), $resourcePath);
        } else {
            $resourcePath = str_replace("&to={" . "to" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SplitResultResponse');
        return $responseObject;
    }

    /**
     * PutConvertDocument
     * Convert document from request content to format specified.
     * format, string: The format to convert. (optional)

     * url, string:  (optional)

     * outPath, string: Path to save result (optional)

     * file, File:  (required)

     * @return ResponseMessage
     */
    public function PutConvertDocument($format = null, $url = null, $outPath = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;url={url}&amp;outPath={outPath}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($url != null) {
            $resourcePath = str_replace("{" . "url" . "}", $this->apiClient->toQueryValue($url), $resourcePath);
        } else {
            $resourcePath = str_replace("&url={" . "url" . "}", "", $resourcePath);
        }
        if ($outPath != null) {
            $resourcePath = str_replace("{" . "outPath" . "}", $this->apiClient->toQueryValue($outPath), $resourcePath);
        } else {
            $resourcePath = str_replace("&outPath={" . "outPath" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PutCreateDocument
     * Create new document.
     * name, string: The new document name. (required)

     * templateFile, string: The template file server path if defined. (optional)

     * dataFile, string: The data file path (for xml template only). (optional)

     * templateType, string: The template type, can be xml or html. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The new document folder. (optional)

     * @return DocumentResponse
     */
    public function PutCreateDocument($name, $templateFile = null, $dataFile = null, $templateType = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;templateType={templateType}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($templateFile != null) {
            $resourcePath = str_replace("{" . "templateFile" . "}", $this->apiClient->toQueryValue($templateFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&templateFile={" . "templateFile" . "}", "", $resourcePath);
        }
        if ($dataFile != null) {
            $resourcePath = str_replace("{" . "dataFile" . "}", $this->apiClient->toQueryValue($dataFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&dataFile={" . "dataFile" . "}", "", $resourcePath);
        }
        if ($templateType != null) {
            $resourcePath = str_replace("{" . "templateType" . "}", $this->apiClient->toQueryValue($templateType), $resourcePath);
        } else {
            $resourcePath = str_replace("&templateType={" . "templateType" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentResponse');
        return $responseObject;
    }

    /**
     * PostAppendDocument
     * Append document to existing one.
     * name, string: The original document name. (required)

     * appendFile, string: Append file server path. (optional)

     * startPage, int: Appending start page. (optional)

     * endPage, int: Appending end page. (optional)

     * storage, string: The documents storage. (optional)

     * folder, string: The original document folder. (optional)

     * body, AppendDocument: with the append document data. (required)

     * @return DocumentResponse
     */
    public function PostAppendDocument($name, $appendFile = null, $startPage = null, $endPage = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/appendDocument/?appSid={appSid}&amp;appendFile={appendFile}&amp;startPage={startPage}&amp;endPage={endPage}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($appendFile != null) {
            $resourcePath = str_replace("{" . "appendFile" . "}", $this->apiClient->toQueryValue($appendFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&appendFile={" . "appendFile" . "}", "", $resourcePath);
        }
        if ($startPage != null) {
            $resourcePath = str_replace("{" . "startPage" . "}", $this->apiClient->toQueryValue($startPage), $resourcePath);
        } else {
            $resourcePath = str_replace("&startPage={" . "startPage" . "}", "", $resourcePath);
        }
        if ($endPage != null) {
            $resourcePath = str_replace("{" . "endPage" . "}", $this->apiClient->toQueryValue($endPage), $resourcePath);
        } else {
            $resourcePath = str_replace("&endPage={" . "endPage" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentResponse');
        return $responseObject;
    }

    /**
     * PutMergeDocuments
     * Merge a list of documents.
     * name, string: Resulting documen name. (required)

     * storage, string: Resulting document storage. (optional)

     * folder, string: Resulting document folder. (optional)

     * body, MergeDocuments: with a list of documents. (required)

     * @return DocumentResponse
     */
    public function PutMergeDocuments($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/merge/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentResponse');
        return $responseObject;
    }

    /**
     * PutDocumentSaveAsTiff
     * Save document as Tiff image.
     * name, string: The document name. (required)

     * resultFile, string: The resulting file. (optional)

     * brightness, float: The image brightness. (optional)

     * compression, string: Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)

     * colorDepth, string: Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)

     * leftMargin, int: Left image margin. (optional)

     * rightMargin, int: Right image margin. (optional)

     * topMargin, int: Top image margin. (optional)

     * bottomMargin, int: Bottom image margin. (optional)

     * orientation, string: Image orientation. Possible values are: None, Landscape, Portait. (optional)

     * skipBlankPages, bool: Skip blank pages flag. (optional)

     * width, int: Image width. (optional)

     * height, int: Image height. (optional)

     * xResolution, int: Horizontal resolution. (optional)

     * yResolution, int: Vertical resolution. (optional)

     * pageIndex, int: Start page to export. (optional)

     * pageCount, int: Number of pages to export. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, TiffExportOptions: with tiff export options. (required)

     * @return SaaSposeResponse
     */
    public function PutDocumentSaveAsTiff($name, $resultFile = null, $brightness = null, $compression = null, $colorDepth = null, $leftMargin = null, $rightMargin = null, $topMargin = null, $bottomMargin = null, $orientation = null, $skipBlankPages = null, $width = null, $height = null, $xResolution = null, $yResolution = null, $pageIndex = null, $pageCount = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/SaveAs/tiff/?appSid={appSid}&amp;resultFile={resultFile}&amp;brightness={brightness}&amp;compression={compression}&amp;colorDepth={colorDepth}&amp;leftMargin={leftMargin}&amp;rightMargin={rightMargin}&amp;topMargin={topMargin}&amp;bottomMargin={bottomMargin}&amp;orientation={orientation}&amp;skipBlankPages={skipBlankPages}&amp;width={width}&amp;height={height}&amp;xResolution={xResolution}&amp;yResolution={yResolution}&amp;pageIndex={pageIndex}&amp;pageCount={pageCount}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($resultFile != null) {
            $resourcePath = str_replace("{" . "resultFile" . "}", $this->apiClient->toQueryValue($resultFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&resultFile={" . "resultFile" . "}", "", $resourcePath);
        }
        if ($brightness != null) {
            $resourcePath = str_replace("{" . "brightness" . "}", $this->apiClient->toQueryValue($brightness), $resourcePath);
        } else {
            $resourcePath = str_replace("&brightness={" . "brightness" . "}", "", $resourcePath);
        }
        if ($compression != null) {
            $resourcePath = str_replace("{" . "compression" . "}", $this->apiClient->toQueryValue($compression), $resourcePath);
        } else {
            $resourcePath = str_replace("&compression={" . "compression" . "}", "", $resourcePath);
        }
        if ($colorDepth != null) {
            $resourcePath = str_replace("{" . "colorDepth" . "}", $this->apiClient->toQueryValue($colorDepth), $resourcePath);
        } else {
            $resourcePath = str_replace("&colorDepth={" . "colorDepth" . "}", "", $resourcePath);
        }
        if ($leftMargin != null) {
            $resourcePath = str_replace("{" . "leftMargin" . "}", $this->apiClient->toQueryValue($leftMargin), $resourcePath);
        } else {
            $resourcePath = str_replace("&leftMargin={" . "leftMargin" . "}", "", $resourcePath);
        }
        if ($rightMargin != null) {
            $resourcePath = str_replace("{" . "rightMargin" . "}", $this->apiClient->toQueryValue($rightMargin), $resourcePath);
        } else {
            $resourcePath = str_replace("&rightMargin={" . "rightMargin" . "}", "", $resourcePath);
        }
        if ($topMargin != null) {
            $resourcePath = str_replace("{" . "topMargin" . "}", $this->apiClient->toQueryValue($topMargin), $resourcePath);
        } else {
            $resourcePath = str_replace("&topMargin={" . "topMargin" . "}", "", $resourcePath);
        }
        if ($bottomMargin != null) {
            $resourcePath = str_replace("{" . "bottomMargin" . "}", $this->apiClient->toQueryValue($bottomMargin), $resourcePath);
        } else {
            $resourcePath = str_replace("&bottomMargin={" . "bottomMargin" . "}", "", $resourcePath);
        }
        if ($orientation != null) {
            $resourcePath = str_replace("{" . "orientation" . "}", $this->apiClient->toQueryValue($orientation), $resourcePath);
        } else {
            $resourcePath = str_replace("&orientation={" . "orientation" . "}", "", $resourcePath);
        }
        if ($skipBlankPages != null) {
            $resourcePath = str_replace("{" . "skipBlankPages" . "}", $this->apiClient->toQueryValue($skipBlankPages), $resourcePath);
        } else {
            $resourcePath = str_replace("&skipBlankPages={" . "skipBlankPages" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($xResolution != null) {
            $resourcePath = str_replace("{" . "xResolution" . "}", $this->apiClient->toQueryValue($xResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&xResolution={" . "xResolution" . "}", "", $resourcePath);
        }
        if ($yResolution != null) {
            $resourcePath = str_replace("{" . "yResolution" . "}", $this->apiClient->toQueryValue($yResolution), $resourcePath);
        } else {
            $resourcePath = str_replace("&yResolution={" . "yResolution" . "}", "", $resourcePath);
        }
        if ($pageIndex != null) {
            $resourcePath = str_replace("{" . "pageIndex" . "}", $this->apiClient->toQueryValue($pageIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageIndex={" . "pageIndex" . "}", "", $resourcePath);
        }
        if ($pageCount != null) {
            $resourcePath = str_replace("{" . "pageCount" . "}", $this->apiClient->toQueryValue($pageCount), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageCount={" . "pageCount" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetField
     * Get document field by name.
     * name, string: The document name. (required)

     * fieldName, string: The field name/ (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return FieldResponse
     */
    public function GetField($name, $fieldName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $fieldName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($fieldName != null) {
            $resourcePath = str_replace("{" . "fieldName" . "}", $this->apiClient->toQueryValue($fieldName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fieldName={" . "fieldName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'FieldResponse');
        return $responseObject;
    }

    /**
     * GetFields
     * Get document fields.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return FieldsResponse
     */
    public function GetFields($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'FieldsResponse');
        return $responseObject;
    }

    /**
     * PostCreateField
     * Create field.
     * name, string: The document name. (required)

     * page, int: Document page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Field: with the field data. (required)

     * @return SaaSposeResponse
     */
    public function PostCreateField($name, $page, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $page == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;page={page}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($page != null) {
            $resourcePath = str_replace("{" . "page" . "}", $this->apiClient->toQueryValue($page), $resourcePath);
        } else {
            $resourcePath = str_replace("&page={" . "page" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutUpdateField
     * Update field.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fieldName, string:  (required)

     * body, Field: with the field data. (required)

     * @return FieldResponse
     */
    public function PutUpdateField($name, $storage = null, $folder = null, $fieldName, $body) {
        // verify required params are set
        if ($name == '' || $fieldName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/fields/{fieldName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fieldName != null) {
            $resourcePath = str_replace("{" . "fieldName" . "}", $this->apiClient->toQueryValue($fieldName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fieldName={" . "fieldName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'FieldResponse');
        return $responseObject;
    }

    /**
     * PutUpdateFields
     * Update fields.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Fields: with the fields data. (required)

     * @return FieldsResponse
     */
    public function PutUpdateFields($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/fields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'FieldsResponse');
        return $responseObject;
    }

    /**
     * GetFragment
     * Read page fragment.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * fragmentNumber, int:  (required)

     * withEmpty, string:  (optional)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemsResponse
     */
    public function GetFragment($name, $pageNumber, $fragmentNumber, $withEmpty = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $fragmentNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($fragmentNumber != null) {
            $resourcePath = str_replace("{" . "fragmentNumber" . "}", $this->apiClient->toQueryValue($fragmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&fragmentNumber={" . "fragmentNumber" . "}", "", $resourcePath);
        }
        if ($withEmpty != null) {
            $resourcePath = str_replace("{" . "withEmpty" . "}", $this->apiClient->toQueryValue($withEmpty), $resourcePath);
        } else {
            $resourcePath = str_replace("&withEmpty={" . "withEmpty" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetFragments
     * Read page fragments.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * withEmpty, string:  (optional)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemsResponse
     */
    public function GetFragments($name, $pageNumber, $withEmpty = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($withEmpty != null) {
            $resourcePath = str_replace("{" . "withEmpty" . "}", $this->apiClient->toQueryValue($withEmpty), $resourcePath);
        } else {
            $resourcePath = str_replace("&withEmpty={" . "withEmpty" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetFragmentTextFormat
     * Read page fragment text format.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * fragmentNumber, int:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextFormatResponse
     */
    public function GetFragmentTextFormat($name, $pageNumber, $fragmentNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $fragmentNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($fragmentNumber != null) {
            $resourcePath = str_replace("{" . "fragmentNumber" . "}", $this->apiClient->toQueryValue($fragmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&fragmentNumber={" . "fragmentNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextFormatResponse');
        return $responseObject;
    }

    /**
     * GetSegment
     * Read segment.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * fragmentNumber, int:  (required)

     * segmentNumber, int:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemResponse
     */
    public function GetSegment($name, $pageNumber, $fragmentNumber, $segmentNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $fragmentNumber == '' || $segmentNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($fragmentNumber != null) {
            $resourcePath = str_replace("{" . "fragmentNumber" . "}", $this->apiClient->toQueryValue($fragmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&fragmentNumber={" . "fragmentNumber" . "}", "", $resourcePath);
        }
        if ($segmentNumber != null) {
            $resourcePath = str_replace("{" . "segmentNumber" . "}", $this->apiClient->toQueryValue($segmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&segmentNumber={" . "segmentNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemResponse');
        return $responseObject;
    }

    /**
     * GetSegments
     * Read fragment segments.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * fragmentNumber, int:  (required)

     * withEmpty, string:  (optional)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemsResponse
     */
    public function GetSegments($name, $pageNumber, $fragmentNumber, $withEmpty = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $fragmentNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($fragmentNumber != null) {
            $resourcePath = str_replace("{" . "fragmentNumber" . "}", $this->apiClient->toQueryValue($fragmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&fragmentNumber={" . "fragmentNumber" . "}", "", $resourcePath);
        }
        if ($withEmpty != null) {
            $resourcePath = str_replace("{" . "withEmpty" . "}", $this->apiClient->toQueryValue($withEmpty), $resourcePath);
        } else {
            $resourcePath = str_replace("&withEmpty={" . "withEmpty" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetSegmentTextFormat
     * Read segment text format.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * fragmentNumber, int:  (required)

     * segmentNumber, int:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextFormatResponse
     */
    public function GetSegmentTextFormat($name, $pageNumber, $fragmentNumber, $segmentNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $fragmentNumber == '' || $segmentNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($fragmentNumber != null) {
            $resourcePath = str_replace("{" . "fragmentNumber" . "}", $this->apiClient->toQueryValue($fragmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&fragmentNumber={" . "fragmentNumber" . "}", "", $resourcePath);
        }
        if ($segmentNumber != null) {
            $resourcePath = str_replace("{" . "segmentNumber" . "}", $this->apiClient->toQueryValue($segmentNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&segmentNumber={" . "segmentNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextFormatResponse');
        return $responseObject;
    }

    /**
     * GetImage
     * Read document image by number.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * imageNumber, int: The image format. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetImage($name, $pageNumber, $imageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $imageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($imageNumber != null) {
            $resourcePath = str_replace("{" . "imageNumber" . "}", $this->apiClient->toQueryValue($imageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageNumber={" . "imageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetImages
     * Read document images.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ImagesResponse
     */
    public function GetImages($name, $pageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/images/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ImagesResponse');
        return $responseObject;
    }

    /**
     * GetImageWithFormat
     * Extract document image in format specified.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * imageNumber, int: The image format. (required)

     * format, string: Image format to convert, if not specified the common image data is read. (required)

     * width, int: The converted image width. (optional)

     * height, int: The converted image height. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetImageWithFormat($name, $pageNumber, $imageNumber, $format, $width = null, $height = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $imageNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?toFormat={toFormat}&amp;appSid={appSid}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($imageNumber != null) {
            $resourcePath = str_replace("{" . "imageNumber" . "}", $this->apiClient->toQueryValue($imageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageNumber={" . "imageNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * PostReplaceImage
     * Replace document image.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * imageNumber, int: The image number. (required)

     * imageFile, string: Path to image file if specified. Request content is used otherwise. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * file, File:  (required)

     * @return ImageResponse
     */
    public function PostReplaceImage($name, $pageNumber, $imageNumber, $imageFile = null, $storage = null, $folder = null, $file) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $imageNumber == '' || $file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/?appSid={appSid}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($imageNumber != null) {
            $resourcePath = str_replace("{" . "imageNumber" . "}", $this->apiClient->toQueryValue($imageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageNumber={" . "imageNumber" . "}", "", $resourcePath);
        }
        if ($imageFile != null) {
            $resourcePath = str_replace("{" . "imageFile" . "}", $this->apiClient->toQueryValue($imageFile), $resourcePath);
        } else {
            $resourcePath = str_replace("&imageFile={" . "imageFile" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ImageResponse');
        return $responseObject;
    }

    /**
     * GetPageLinkAnnotationByIndex
     * Read document page link annotation by its index.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * linkIndex, int: The link index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return LinkAnnotationResponse
     */
    public function GetPageLinkAnnotationByIndex($name, $pageNumber, $linkIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $linkIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/links/{linkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($linkIndex != null) {
            $resourcePath = str_replace("{" . "linkIndex" . "}", $this->apiClient->toQueryValue($linkIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&linkIndex={" . "linkIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'LinkAnnotationResponse');
        return $responseObject;
    }

    /**
     * GetPageLinkAnnotations
     * Read document page link annotations.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return LinkAnnotationsResponse
     */
    public function GetPageLinkAnnotations($name, $pageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/links/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'LinkAnnotationsResponse');
        return $responseObject;
    }

    /**
     * DeletePage
     * Delete document page by its number.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeletePage($name, $pageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetPage
     * Read document page info.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetPage($name, $pageNumber, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetPages
     * Read document pages info.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return DocumentPagesResponse
     */
    public function GetPages($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPagesResponse');
        return $responseObject;
    }

    /**
     * GetPageWithFormat
     * Convert document page to format specified.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * format, string: The format to convert if specified. (required)

     * width, int: The converted image width. (optional)

     * height, int: The converted image height. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetPageWithFormat($name, $pageNumber, $format, $width = null, $height = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;width={width}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($width != null) {
            $resourcePath = str_replace("{" . "width" . "}", $this->apiClient->toQueryValue($width), $resourcePath);
        } else {
            $resourcePath = str_replace("&width={" . "width" . "}", "", $resourcePath);
        }
        if ($height != null) {
            $resourcePath = str_replace("{" . "height" . "}", $this->apiClient->toQueryValue($height), $resourcePath);
        } else {
            $resourcePath = str_replace("&height={" . "height" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetWordsPerPage
     * Get number of words per document page.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return WordCountResponse
     */
    public function GetWordsPerPage($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/wordCount/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'WordCountResponse');
        return $responseObject;
    }

    /**
     * PostMovePage
     * Move page to new position.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * newIndex, int: The new page position/index. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function PostMovePage($name, $pageNumber, $newIndex, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $newIndex == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/movePage/?newIndex={newIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($newIndex != null) {
            $resourcePath = str_replace("{" . "newIndex" . "}", $this->apiClient->toQueryValue($newIndex), $resourcePath);
        } else {
            $resourcePath = str_replace("&newIndex={" . "newIndex" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostSignPage
     * Sign page.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Signature: with the signature data. (required)

     * @return SaaSposeResponse
     */
    public function PostSignPage($name, $pageNumber, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/sign/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutAddNewPage
     * Add new page to end of the document.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return DocumentPagesResponse
     */
    public function PutAddNewPage($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPagesResponse');
        return $responseObject;
    }

    /**
     * PutPageAddStamp
     * Add page stamp.
     * name, string: The document name. (required)

     * pageNumber, int: The page number. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Stamp: with data. (required)

     * @return SaaSposeResponse
     */
    public function PutPageAddStamp($name, $pageNumber, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/stamp/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteProperties
     * Delete document properties.
     * name, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProperties($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteProperty
     * Delete document property.
     * name, string:  (required)

     * propertyName, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProperty($name, $propertyName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $propertyName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetDocumentProperties
     * Read document properties.
     * name, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return DocumentPropertiesResponse
     */
    public function GetDocumentProperties($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertiesResponse');
        return $responseObject;
    }

    /**
     * GetDocumentProperty
     * Read document property by name.
     * name, string:  (required)

     * propertyName, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return DocumentPropertyResponse
     */
    public function GetDocumentProperty($name, $propertyName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $propertyName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * PutSetProperty
     * Add/update document property.
     * name, string:  (required)

     * propertyName, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * body, DocumentProperty:  (required)

     * @return DocumentPropertyResponse
     */
    public function PutSetProperty($name, $propertyName, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $propertyName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * GetPageTextItems
     * Read page text items.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * withEmpty, string:  (optional)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemsResponse
     */
    public function GetPageTextItems($name, $pageNumber, $withEmpty = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $pageNumber == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($withEmpty != null) {
            $resourcePath = str_replace("{" . "withEmpty" . "}", $this->apiClient->toQueryValue($withEmpty), $resourcePath);
        } else {
            $resourcePath = str_replace("&withEmpty={" . "withEmpty" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * GetTextItems
     * Read document text items.
     * name, string:  (required)

     * withEmpty, string:  (optional)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * @return TextItemsResponse
     */
    public function GetTextItems($name, $withEmpty = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/textItems/?appSid={appSid}&amp;withEmpty={withEmpty}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($withEmpty != null) {
            $resourcePath = str_replace("{" . "withEmpty" . "}", $this->apiClient->toQueryValue($withEmpty), $resourcePath);
        } else {
            $resourcePath = str_replace("&withEmpty={" . "withEmpty" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TextItemsResponse');
        return $responseObject;
    }

    /**
     * PostDocumentReplaceText
     * Document's replace text method.
     * name, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * body, TextReplace:  (required)

     * @return DocumentTextReplaceResponse
     */
    public function PostDocumentReplaceText($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentTextReplaceResponse');
        return $responseObject;
    }

    /**
     * PostDocumentReplaceTextList
     * Document's replace text method.
     * name, string:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * body, TextReplaceListRequest:  (required)

     * @return DocumentTextReplaceResponse
     */
    public function PostDocumentReplaceTextList($name, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentTextReplaceResponse');
        return $responseObject;
    }

    /**
     * PostPageReplaceText
     * Page's replace text method.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * body, TextReplace:  (required)

     * @return PageTextReplaceResponse
     */
    public function PostPageReplaceText($name, $pageNumber, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/replaceText/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PageTextReplaceResponse');
        return $responseObject;
    }

    /**
     * PostPageReplaceTextList
     * Page's replace text method.
     * name, string:  (required)

     * pageNumber, int:  (required)

     * storage, string:  (optional)

     * folder, string:  (optional)

     * body, TextReplaceListRequest:  (required)

     * @return PageTextReplaceResponse
     */
    public function PostPageReplaceTextList($name, $pageNumber, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $pageNumber == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/pdf/{name}/pages/{pageNumber}/replaceTextList/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($pageNumber != null) {
            $resourcePath = str_replace("{" . "pageNumber" . "}", $this->apiClient->toQueryValue($pageNumber), $resourcePath);
        } else {
            $resourcePath = str_replace("&pageNumber={" . "pageNumber" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'PageTextReplaceResponse');
        return $responseObject;
    }

}
