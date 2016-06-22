<?php

use Aspose\PDF\PdfApi;

class PdfApiTest extends PHPUnit_Framework_TestCase {
    
    protected $pdf;

    protected function setUp()
    {	
        $this->pdf = new PdfApi();
    }
    
    public function testDeletePage()
    {        
        $result = $this->pdf->DeletePage($name="sample-input.pdf", $pageNumber="1", $storage = "", $folder = "");
	  $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
       
    public function testDeleteProperties()
    {        
        $result = $this->pdf->DeleteProperties($name="sample-input.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProperty()
    {        
        $result = $this->pdf->DeleteProperty($name="Sample-Annotation-Property.pdf", $propertyName="AsposeDev", $storage = "", $folder = "");
	  $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocument()
    {        
        $result = $this->pdf->GetDocument($name="sample-input.pdf", $storage = "", $folder = "");
	  $this->assertInternalType('string',$result );        
    }
    
    public function testGetDocumentAttachmentByIndex()
    {        
        $result = $this->pdf->GetDocumentAttachmentByIndex($name="SampleAttachment.pdf", $attachmentIndex=1, $storage = "", $folder = "");        
	$this->assertInstanceOf('\Aspose\PDF\Models\AttachmentResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentAttachments() {
	$result = $this->pdf->GetDocumentAttachments($name = "SampleAttachment.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\AttachmentsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    
    public function testGetDocumentBookmarks() {
	$result = $this->pdf->GetDocumentBookmarks($name = "Sample-Bookmark.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\BookmarksResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetDocumentBookmarksChildren() {
	$result = $this->pdf->GetDocumentBookmarksChildren($name = "Sample-Bookmark.pdf", $bookmarkPath = "1", $storage = "", $folder = "");
	$this->assertInternalType('string',$result );        
    }

    public function testGetDocumentProperties() {
	$result = $this->pdf->GetDocumentProperties($name = "sample-input.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertiesResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    
    public function testGetDocumentProperty() {
	$result = $this->pdf->GetDocumentProperty($name = "sample-input.pdf", $propertyName = "Author", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertyResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetDocumentWithFormat() {
	$result = $this->pdf->GetDocumentWithFormat($name = "Sample.pdf", $format = "tiff", $storage = "", $folder = "", $outPath = "");
	$this->assertInternalType('string',$result );        
    }

    
    public function testGetDownloadDocumentAttachmentByIndex()
    {        
        $result = $this->pdf->GetDownloadDocumentAttachmentByIndex($name="SampleAttachment.pdf", $attachmentIndex=1, $storage = "", $folder = "");
        //print_r($result); exit;
        $fh = fopen(getcwd(). '/Data/Output/update-test.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-test.tiff');
	$this->assertInternalType('string',$result );
    }
    
    public function testGetExtractBarcodes() {
	$result = $this->pdf->GetExtractBarcodes($name = "Barcode.pdf", $pageNumber = 1, $imageNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\BarcodeResponseList', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetField() {
	$result = $this->pdf->GetField($name = "sample-field.pdf", $fieldName = "textbox1", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\FieldResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetFields() {
	$result = $this->pdf->GetFields($name = "sample-field.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\FieldsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetFragment() {
	$result = $this->pdf->GetFragment($name = "sample-input.pdf", $pageNumber = 1, $fragmentNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetFragmentTextFormat() {
	$result = $this->pdf->GetFragmentTextFormat($name = "sample-input.pdf", $pageNumber = 1, $fragmentNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextFormatResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetFragments() {
	$result = $this->pdf->GetFragments($name = "sample-input.pdf", $pageNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetImage() {
	$result = $this->pdf->GetImage($name = "SampleImage.pdf", $pageNumber = 1, $imageNumber = 1, $storage = "", $folder = "");
	$this->assertInternalType('string',$result );
    }

    public function testGetImageWithFormat()
    {        
        $result = $this->pdf->GetImageWithFormat($name="SampleImage.pdf", $pageNumber=1, $imageNumber=1, $format="png", $width = 100, $height = 100, $storage = "", $folder = "");
        $fh = fopen(getcwd(). '/Data/Output/Test.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.png');
	$this->assertInternalType('string',$result );
    }
    
    public function testGetImages() {
	$result = $this->pdf->GetImages($name = "SampleImage.pdf", $pageNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\ImagesResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPage() {
	$result = $this->pdf->GetPage($name = "sample-input.pdf", $pageNumber = 1, $storage = "", $folder = "");
	$this->assertInternalType('string',$result );
    }

    public function testGetPageAnnotation() {
	$result = $this->pdf->GetPageAnnotation($name = "Sample-Annotation.pdf", $pageNumber = 1, $annotationNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\AnnotationResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageAnnotations() {
	$result = $this->pdf->GetPageAnnotations($name = "Sample-Annotation.pdf", $pageNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\AnnotationsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageLinkAnnotationByIndex() {
	$result = $this->pdf->GetPageLinkAnnotationByIndex($name = "Sample-Bookmark.pdf", $pageNumber = 1, $linkIndex = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\LinkAnnotationResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageLinkAnnotations() {
	$result = $this->pdf->GetPageLinkAnnotations($name = "Sample-Bookmark.pdf", $pageNumber = 1, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\LinkAnnotationsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageTextItems() {
	$result = $this->pdf->GetPageTextItems($name = "sample-input.pdf", $pageNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetPageWithFormat()
    {        
        $result = $this->pdf->GetPageWithFormat($name="sample-input.pdf", $pageNumber=1, $format="gif", $width = "", $height = "", $storage = "", $folder = "");        
        $fh = fopen(getcwd(). '/Data/Output/Test.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.gif');
	$this->assertInternalType('string',$result );
    }
    
    public function testGetPages() {
	$result = $this->pdf->GetPages($name = "sample-input.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPagesResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetSegment() {
	$result = $this->pdf->GetSegment($name = "pdf_commenting_new.pdf", $pageNumber = 1, $fragmentNumber = 1, $segmentNumber = 1, $storage = "", $folder = "");
	print_r($result);$this->assertInstanceOf('\Aspose\PDF\Models\TextItemResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetSegmentTextFormat() {
	$result = $this->pdf->GetSegmentTextFormat($name = "Sample-Annotation-Property.pdf", $pageNumber = "1", $fragmentNumber = "1", $segmentNumber = "1", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextFormatResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetSegments() {
	$result = $this->pdf->GetSegments($name = "Sample-Annotation-Property.pdf", $pageNumber = 1, $fragmentNumber = 1, $withEmpty = "", $storage = "", $folder = "");
	print_r($result);$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    
    public function testGetTextItems() {
	$result = $this->pdf->GetTextItems($name = "sample-input.pdf", $withEmpty = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\TextItemsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testGetWordsPerPage() {
	$result = $this->pdf->GetWordsPerPage($name = "sample-input.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\WordCountResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostAppendDocument()
    {        
        $body = array("Document"=>"SampleImage.pdf");
        $result = $this->pdf->PostAppendDocument($name="sample-input.pdf", $appendFile = "", $startPage = "", $endPage = "", $storage = "", $folder = "", $body);         
        $this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse',$result );$this->assertEquals(200, $result->Code);
    }
    
    public function testPostCreateField()
    {        
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
        $result = $this->pdf->PostCreateField($name="sample-input.pdf", $page=1, $storage = "", $folder = "", $body);         
        $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );$this->assertEquals(200, $result->Code);
    }
    
    public function testPostDocumentReplaceText() {
	$body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
	$result = $this->pdf->PostDocumentReplaceText($name = "sample-input.pdf", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentTextReplaceResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostDocumentReplaceTextList() {
	$body = array('TextReplaces' => array(array('OldValue' => "sample", 'NewValue' => "demo", 'Regex' => 'false'),
		array('OldValue' => "document", 'NewValue' => "page", 'Regex' => 'false')));
	$result = $this->pdf->PostDocumentReplaceTextList($name = "sample-input.pdf", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentTextReplaceResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    
    public function testPostMovePage() {
	$result = $this->pdf->PostMovePage($name = "sample-input.pdf", $pageNumber = 1, $newIndex = 2, $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostPageReplaceText() {
	$body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
	$result = $this->pdf->PostPageReplaceText($name = "sample-input.pdf", $pageNumber = 1, $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\PageTextReplaceResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostPageReplaceTextList() {
	$body = array('TextReplaces' => array(array('OldValue' => "sample", 'NewValue' => "demo", 'Regex' => 'false'),
		array('OldValue' => "document", 'NewValue' => "page", 'Regex' => 'false')));
	$result = $this->pdf->PostPageReplaceTextList($name = "sample-input.pdf", $pageNumber = 1, $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\PageTextReplaceResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostReplaceImage() {
	$file = getcwd() . '/Data/Input/aspose-cloud.png';
	$result = $this->pdf->PostReplaceImage($name = "SampleImage.pdf", $pageNumber = 1, $imageNumber = 1, $imageFile = "", $storage = "", $folder = "", $file);
	$this->assertInstanceOf('\Aspose\PDF\Models\ImageResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPostSignDocument()
    {
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
        $result = $this->pdf->PostSignPage($name = "sample-input.pdf", $pageNumber = "1", $storage = "", $folder = "", $body);
        $this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse',$result );
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSignPage() {
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
	$result = $this->pdf->PostSignPage($name = "sample-input.pdf", $pageNumber = "1", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    
    public function testPostSplitDocument() {
	$result = $this->pdf->PostSplitDocument($name = "sample-input.pdf", $format = "", $from = "", $to = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\SplitResultResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutAddNewPage() {
	$result = $this->pdf->PutAddNewPage($name = "sample-input.pdf", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPagesResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutConvertDocument() {
	$file = getcwd() . '/Data/Input/sample-input.pdf';
	$result = $this->pdf->PutConvertDocument($format = "tiff", $url = "", $outPath = "", $file);
	$fh = fopen(getcwd() . '/Data/Output/Test.tiff', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/Test.tiff');
    }

    public function testPutCreateDocument() {
	$result = $this->pdf->PutCreateDocument($name = "create.pdf", $templateFile = "", $dataFile = "", $templateType = "", $storage = "", $folder = "");
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutDocumentSaveAsTiff() {
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
	$result = $this->pdf->PutDocumentSaveAsTiff($name = "sample-input.pdf", $resultFile = "Test.tiff", $brightness = "", $compression = "", $colorDepth = "", $leftMargin = "", $rightMargin = "", $topMargin = "", $bottomMargin = "", $orientation = "", $skipBlankPages = "", $width = "", $height = "", $xResolution = "", $yResolution = "", $pageIndex = "", $pageCount = "", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutMergeDocuments() {
	$body = array('List' => array('Sample.pdf', 'sample-input.pdf'));
	$result = $this->pdf->PutMergeDocuments($name = "sample-input.pdf", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutPageAddStamp() {
	$body = array("Type"=>"Text","Background"=>"true","Value"=>"ASPOSE Document");

	$result = $this->pdf->PutPageAddStamp($name = "sample-input.pdf", $pageNumber = 1, $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\SaaSposeResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutSetProperty() {
	$body = array('Value' => 'Mike');
	$result = $this->pdf->PutSetProperty($name = "sample-input.pdf", $propertyName = "Author", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\DocumentPropertyResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutUpdateField() {
	$body = array("Name" => "textbox1", "Values" => array("Aspose"));
	$result = $this->pdf->PutUpdateField($name = "sample-field.pdf", $storage = "", $folder = "", $fieldName = "textbox1", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\FieldResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

    public function testPutUpdateFields() {
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
	$result = $this->pdf->PutUpdateFields($name = "sample-field.pdf", $storage = "", $folder = "", $body);
	$this->assertInstanceOf('\Aspose\PDF\Models\FieldsResponse', $result);
	$this->assertEquals(200, $result->Code);
    }

}    