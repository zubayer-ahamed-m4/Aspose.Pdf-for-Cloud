<?php

require_once realpath(__DIR__) . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class PdfApiTest extends PHPUnit_Framework_TestCase {
    
    protected $pdf;

    protected function setUp()
    {	
        AsposeApp::$appSID = Utils::appSID;
        AsposeApp::$apiKey = Utils::apiKey;
        $this->pdf = new PdfApi();
    }
    
    public function testDeletePage()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->DeletePage($name, $pageNumber="1", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
       
    public function testDeleteProperties()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->DeleteProperties($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProperty()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "Sample-Annotation-Property.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->DeleteProperty($name, $propertyName="AsposeDev", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocument()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetDocument($name, $storage = "", $folder = "");
	    $this->assertInternalType('string',$result );        
    }
    
    public function testGetDocumentAttachmentByIndex()
    {     
        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetDocumentAttachmentByIndex($name, $attachmentIndex=1, $storage = "", $folder = "");        
	    $this->assertInstanceOf('\Aspose\PDF\Models\AttachmentResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentAttachments() {
	   
        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetDocumentAttachments($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\AttachmentsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetDocumentBookmarks() {
        // Upload file to Aspose Cloud Storage
        $name = "Sample-Bookmark.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetDocumentBookmarks($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\BookmarksResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetDocumentBookmarksChildren() {
        // Upload file to Aspose Cloud Storage
        $name = "Sample-Bookmark.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetDocumentBookmarksChildren($name, $bookmarkPath = "1", $storage = "", $folder = "");
	    $this->assertInternalType('string',$result );        
    }

    public function testGetDocumentProperties() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetDocumentProperties($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertiesResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    
    public function testGetDocumentProperty() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetDocumentProperty($name, $propertyName = "Author", $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertyResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testGetDocumentWithFormat() {

        // Upload file to Aspose Cloud Storage
        $name = "Sample.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetDocumentWithFormat($name, $format = "tiff", $storage = "", $folder = "", $outPath = "");
	    $this->assertInternalType('string',$result );        
    }

    
    public function testGetDownloadDocumentAttachmentByIndex() {        
        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetDownloadDocumentAttachmentByIndex($name, $attachmentIndex=1, $storage = "", $folder = "");
        
        $fh = fopen(realpath(__DIR__ . '/../../../../..'). '/Data/Output/update-test.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(realpath(__DIR__ . '/../../../../..'). '/Data/Output/update-test.tiff');
	    $this->assertInternalType('string',$result );
    }
    
    public function testGetExtractBarcodes() {

        // Upload file to Aspose Cloud Storage
        $name = "Barcode.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetExtractBarcodes($name, $pageNumber = 1, $imageNumber = 1, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\BarcodeResponseList', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetField() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetField($name, $fieldName = "textbox1", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\FieldResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetFields() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-field.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetFields($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\FieldsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetFragment() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetFragment($name, $pageNumber = 1, $fragmentNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetFragmentTextFormat() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetFragmentTextFormat($name, $pageNumber = 1, $fragmentNumber = 1, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\TextFormatResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetFragments() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetFragments($name, $pageNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetImage() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetImage($name, $pageNumber = 1, $imageNumber = 1, $storage = "", $folder = "");
	    $this->assertInternalType('string',$result );
    }

    public function testGetImageWithFormat()
    {        

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetImageWithFormat($name, $pageNumber=1, $imageNumber=1, $format="png", $width = 100, $height = 100, $storage = "", $folder = "");
        $fh = fopen(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.png');
	    $this->assertInternalType('string',$result );
    }
    
    public function testGetImages() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleImage.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetImages($name, $pageNumber = 1, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\ImagesResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetPage() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	   $result = $this->pdf->GetPage($name, $pageNumber = 1, $storage = "", $folder = "");
	   $this->assertInternalType('string',$result );
    }

    public function testGetPageAnnotation() {

        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetPageAnnotation($name, $pageNumber = 1, $annotationNumber = 1, $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\AnnotationResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageAnnotations() {

        // Upload file to Aspose Cloud Storage
        $name = "Sample-Annotation.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetPageAnnotations($name, $pageNumber = 1, $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\AnnotationsResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageLinkAnnotationByIndex() {

        // Upload file to Aspose Cloud Storage
        $name = "Sample-Bookmark.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetPageLinkAnnotationByIndex($name, $pageNumber = 1, $linkIndex = 1, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\LinkAnnotationResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetPageLinkAnnotations() {

        // Upload file to Aspose Cloud Storage
        $name = "Sample-Bookmark.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetPageLinkAnnotations($name, $pageNumber = 1, $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\LinkAnnotationsResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageTextItems() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetPageTextItems($name, $pageNumber = 1, $withEmpty = "", $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageWithFormat()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $result = $this->pdf->GetPageWithFormat($name, $pageNumber=1, $format="gif", $width = "", $height = "", $storage = "", $folder = "");        
        $fh = fopen(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.gif');
	    $this->assertInternalType('string',$result );
    }
    
    public function testGetPages() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetPages($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\DocumentPagesResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetSegment() {
        // Upload file to Aspose Cloud Storage
        $name = "SampleAttachment.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetSegment($name, $pageNumber = 1, $fragmentNumber = 1, $segmentNumber = 1, $storage = "", $folder = "");
	    print_r($result);$this->assertInstanceOf('\Aspose\PDF\Models\TextItemResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetSegmentTextFormat() {
        // Upload file to Aspose Cloud Storage
        $name = "Sample-Annotation-Property.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetSegmentTextFormat($name, $pageNumber = "1", $fragmentNumber = "1", $segmentNumber = "1", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\TextFormatResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetSegments() {
        // Upload file to Aspose Cloud Storage
        $name = "Sample-Annotation-Property.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetSegments($name, $pageNumber = 1, $fragmentNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	    print_r($result);$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    
    public function testGetTextItems() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->GetTextItems($name, $withEmpty = "", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testGetWordsPerPage() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

    	$result = $this->pdf->GetWordsPerPage($name, $storage = "", $folder = "");
    	$this->assertInstanceOf('\Aspose\PDF\Models\WordCountResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testPostAppendDocument()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $body = array("Document"=>"SampleImage.pdf");
        $result = $this->pdf->PostAppendDocument($name, $appendFile = "", $startPage = "", $endPage = "", $storage = "", $folder = "", $body);         
        $this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse',$result );$this->assertEquals(200, $result->Code);
    }
    
    public function testPostCreateField()
    {        
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $body = '{
                    "Name": "ms",
                    "Type": "Boolean",
                    "Values": [
                      "1"
                    ],
                    "SelectedItems": [
                      0
                    ],
                    "Rect": {
                      "X": 0,
                      "Y": 0,
                      "Width": 0,
                      "Height": 0
                    },
                    "Links": [
                      {
                        "Href": "string",
                        "Rel": "string",
                        "Type": "string",
                        "Title": "string"
                      }
                    ]
                  }';
        $result = $this->pdf->PostCreateField($name, $page=1, $storage = "", $folder = "", $body);         
        $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );$this->assertEquals(200, $result->Code);
    }
    
    public function testPostDocumentReplaceText() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
	    $result = $this->pdf->PostDocumentReplaceText($name, $storage = "", $folder = "", $body);
    	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentTextReplaceResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPostDocumentReplaceTextList() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = array('TextReplaces' => array(array('OldValue' => "sample", 'NewValue' => "demo", 'Regex' => 'false'),
		array('OldValue' => "document", 'NewValue' => "page", 'Regex' => 'false')));
	    $result = $this->pdf->PostDocumentReplaceTextList($name, $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\DocumentTextReplaceResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    
    public function testPostMovePage() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->PostMovePage($name, $pageNumber = 1, $newIndex = 2, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPostPageReplaceText() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
	    $result = $this->pdf->PostPageReplaceText($name, $pageNumber = 1, $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\PageTextReplaceResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPostPageReplaceTextList() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = array('TextReplaces' => array(array('OldValue' => "sample", 'NewValue' => "demo", 'Regex' => 'false'),
		array('OldValue' => "document", 'NewValue' => "page", 'Regex' => 'false')));
	    $result = $this->pdf->PostPageReplaceTextList($name, $pageNumber = 1, $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\PageTextReplaceResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPostReplaceImage() {
        // Upload file to Aspose Cloud Storage
        $name = "SampleImage.pdf";
        Utils::uploadFile($name);

	    $file = realpath(__DIR__ . '/../../../../..'). '/Data/aspose-cloud.png';
	    $result = $this->pdf->PostReplaceImage($name, $pageNumber = 1, $imageNumber = 1, $imageFile = "", $storage = "", $folder = "", $file);
	    $this->assertInstanceOf('\Aspose\PDF\Models\ImageResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPostSignDocument()
    {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $body = '{
                    "SignaturePath": "pkc7-sample.pfx",
                    "SignatureType": "PKCS7",
                    "Password": "aspose",
                    //"Reason": "Success",
                    "Contact": "imran.anwar@aspose.com",
                    "Location": "Faisalabad",
                    "Visible": true,
                    "Rectangle": {
                      "X": 100,
                      "Y": 100,
                      "Width": 400,
                      "Height": 100
                    },
                    "FormFieldName": "Signature1",
                    "Authority": "Imran Anwar",
                    "Date": "1-1-2015"
                  }';
        $result = $this->pdf->PostSignPage($name, $pageNumber = "1", $storage = "", $folder = "", $body);
        $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSignPage() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

        $body = '{
                    "SignaturePath": "pkc7-sample.pfx",
                    "SignatureType": "PKCS7",
                    "Password": "aspose",
                    "Reason": "Success",
                    "Contact": "imran.anwar@aspose.com",
                    "Location": "Faisalabad",
                    "Visible": true,
                    "Rectangle": {
                      "X": 100,
                      "Y": 100,
                      "Width": 400,
                      "Height": 100
                    },
                    "FormFieldName": "Signature1",
                    "Authority": "Imran Anwar",
                    "Date": "1-1-2015"
                  }';
	    $result = $this->pdf->PostSignPage($name, $pageNumber = "1", $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    
    public function testPostSplitDocument() {

        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->PostSplitDocument($name, $format = "", $from = "", $to = "", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\SplitResultResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutAddNewPage() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $result = $this->pdf->PutAddNewPage($name, $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\DocumentPagesResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutConvertDocument() {
    	$file = realpath(__DIR__ . '/../../../../..'). '/Data/sample-input.pdf';
    	$result = $this->pdf->PutConvertDocument($format = "tiff", $url = "", $outPath = "", $file);
    	$fh = fopen(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.tiff', 'w');
    	fwrite($fh, $result);
    	fclose($fh);
    	$this->assertFileExists(realpath(__DIR__ . '/../../../../..'). '/Data/Output/Test.tiff');
    }

    public function testPutCreateDocument() {
        
	    $result = $this->pdf->PutCreateDocument($name = "create.pdf", $templateFile = "", $dataFile = "", $templateType = "", $storage = "", $folder = "");
	    $this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutDocumentSaveAsTiff() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = '{
                    "Brightness": 0,
                    "Compression": "",
                    "ColorDepth": "",
                    "LeftMargin": 0,
                    "RightMargin": 0,
                    "TopMargin": 0,
                    "BottomMargin": 0,
                    "Orientation": "",
                    "SkipBlankPages": true,
                    "Width": 600,
                    "Height": 400,
                    "XResolution": 0,
                    "YResolution": 0,
                    "PageIndex": 0,
                    "PageCount": 0,
                    "ResultFile": ""
                 }';
	    $result = $this->pdf->PutDocumentSaveAsTiff($name, $resultFile = "Test.tiff", $brightness = "", $compression = "", $colorDepth = "", $leftMargin = "", $rightMargin = "", $topMargin = "", $bottomMargin = "", $orientation = "", $skipBlankPages = "", $width = "", $height = "", $xResolution = "", $yResolution = "", $pageIndex = "", $pageCount = "", $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutMergeDocuments() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

    	$body = array('List' => array('Sample.pdf', 'sample-input.pdf'));
    	$result = $this->pdf->PutMergeDocuments($name, $storage = "", $folder = "", $body);
    	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse', $result);
    	$this->assertEquals(200, $result->Code);
    }

    public function testPutPageAddStamp() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	    $body = array("Type"=>"Text","Background"=>"true","Value"=>"ASPOSE Document");

	    $result = $this->pdf->PutPageAddStamp($name, $pageNumber = 1, $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutSetProperty() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-input.pdf";
        Utils::uploadFile($name);

	   $body = array('Value' => 'Mike');
	   $result = $this->pdf->PutSetProperty($name, $propertyName = "Author", $storage = "", $folder = "", $body);
	   $this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertyResponse', $result);
	   $this->assertEquals(200, $result->Code);
    }

    public function testPutUpdateField() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-field.pdf";
        Utils::uploadFile($name);

	    $body = array("Name" => "textbox1", "Values" => array("Aspose"));
	    $result = $this->pdf->PutUpdateField($name, $storage = "", $folder = "", $fieldName = "textbox1", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\FieldResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

    public function testPutUpdateFields() {
        // Upload file to Aspose Cloud Storage
        $name = "sample-field.pdf";
        Utils::uploadFile($name);

	    $body = '{
                    "List": [
                      {
                        "Name": "textbox1",
                        "Type": "0",
                        "Values": [
                          "John"
                        ],
                        "SelectedItems": [
                          0
                        ],
                        "Rect": {
                          "X": 0,
                          "Y": 0,
                          "Width": 0,
                          "Height": 0
                        },
                        "Links": [
                          {
                            "Href": "string",
                            "Rel": "string",
                            "Type": "string",
                            "Title": "string"
                          }
                        ]
                      }
                    ],
                    "Links": [
                      "Aspose.Platform.Common.Business.DTO.Link"
                    ]
                  }';
	
        $result = $this->pdf->PutUpdateFields($name, $storage = "", $folder = "", $body);
	    $this->assertInstanceOf('\Aspose\PDF\Models\FieldsResponse', $result);
	    $this->assertEquals(200, $result->Code);
    }

}    