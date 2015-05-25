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
        $result = $this->pdf->DeletePage($name="Test.pdf", $pageNumber=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProperties()
    {        
        $result = $this->pdf->DeleteProperties($name="Test.pdf", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProperty()
    {        
        $result = $this->pdf->DeleteProperty($name="Test.pdf", $propertyName="Test", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocument()
    {        
        $result = $this->pdf->GetDocument($name="Test.pdf", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentAttachmentByIndex()
    {        
        $result = $this->pdf->GetDocumentAttachmentByIndex($name="test_attachment.pdf", $attachmentIndex=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentAttachments()
    {        
        $result = $this->pdf->GetDocumentAttachments($name="test_attachment.pdf", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentBookmarks()
    {        
        $result = $this->pdf->GetDocumentBookmarks($name="Test.pdf", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentBookmarksChildren()
    {        
        $result = $this->pdf->GetDocumentBookmarksChildren($name="Test.pdf", $bookmarkPath = "1", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperties()
    {        
        $result = $this->pdf->GetDocumentProperties($name="Test.pdf", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperty()
    {        
        $result = $this->pdf->GetDocumentProperty($name="Test.pdf", $propertyName="Author", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentWithFormat()
    {        
        $result = $this->pdf->GetDocumentWithFormat($name="Test.pdf", $format="tiff", $storage = null, $folder = null, $outPath = "update-test.tiff");
    }
    
    public function testGetDownloadDocumentAttachmentByIndex()
    {        
        $result = $this->pdf->GetDownloadDocumentAttachmentByIndex($name="Test.pdf", $attachmentIndex=1, $storage = null, $folder = null);
        print_r($result); exit;
        $fh = fopen(getcwd(). '/Data/Output/update-test.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/update-test.tiff');
    }
    
    public function testGetExtractBarcodes()
    {        
        $result = $this->pdf->GetExtractBarcodes($name="Barcode.pdf", $pageNumber=1, $imageNumber=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetField()
    {        
        $result = $this->pdf->GetField($name="complaintform.pdf", $fieldName="first", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetFields()
    {        
        $result = $this->pdf->GetFields($name="complaintform.pdf", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetFragment()
    {        
        $result = $this->pdf->GetFragment($name="Test.pdf", $pageNumber=1, $fragmentNumber=1, $withEmpty = null, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetFragmentTextFormat()
    {        
        $result = $this->pdf->GetFragmentTextFormat($name="Test.pdf", $pageNumber=1, $fragmentNumber=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetFragments()
    {        
        $result = $this->pdf->GetFragments($name="Test.pdf", $pageNumber=1, $withEmpty = null, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetImage()
    {        
        $result = $this->pdf->GetImage($name="Test.pdf", $pageNumber=1, $imageNumber=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetImageWithFormat()
    {        
        $result = $this->pdf->GetImageWithFormat($name="Test.pdf", $pageNumber=1, $imageNumber=1, $format="png", $width = 100, $height = 100, $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Test.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.png');
    }
    
    public function testGetImages()
    {        
        $result = $this->pdf->GetImages($name="Test.pdf", $pageNumber=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPage()
    {        
        $result = $this->pdf->GetPage($name="Test.pdf", $pageNumber=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageAnnotation()
    {        
        $result = $this->pdf->GetPageAnnotation($name="test_annotation.pdf", $pageNumber=1, $annotationNumber=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageAnnotations()
    {        
        $result = $this->pdf->GetPageAnnotations($name="test_annotation.pdf", $pageNumber=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageLinkAnnotationByIndex()
    {        
        $result = $this->pdf->GetPageLinkAnnotationByIndex($name="test_annotation.pdf", $pageNumber=1, $linkIndex=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageLinkAnnotations()
    {        
        $result = $this->pdf->GetPageLinkAnnotations($name="test_annotation.pdf", $pageNumber=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageTextItems()
    {        
        $result = $this->pdf->GetPageTextItems($name="Test.pdf", $pageNumber=1, $withEmpty = null, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetPageWithFormat()
    {        
        $result = $this->pdf->GetPageWithFormat($name="Test.pdf", $pageNumber=1, $format="gif", $width = null, $height = null, $storage = null, $folder = null);        
        $fh = fopen(getcwd(). '/Data/Output/Test.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.gif');
    }
    
    public function testGetPages()
    {        
        $result = $this->pdf->GetPages($name="Test.pdf", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
     
    public function testGetSegment()
    {        
        $result = $this->pdf->GetSegment($name="Test.pdf", $pageNumber=1, $fragmentNumber=1, $segmentNumber=1, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetSegmentTextFormat()
    {        
        $result = $this->pdf->GetSegmentTextFormat($name="Test.pdf", $pageNumber=1, $fragmentNumber=1, $segmentNumber=1, $storage = null, $folder = null);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetSegments()
    {        
        $result = $this->pdf->GetSegments($name="Test.pdf", $pageNumber=1, $fragmentNumber=1, $withEmpty = null, $storage = null, $folder = null); 
        print_r($result); exit;
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetTextItems()
    {        
        $result = $this->pdf->GetTextItems($name="Test.pdf", $withEmpty = null, $storage = null, $folder = null);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWordsPerPage()
    {        
        $result = $this->pdf->GetWordsPerPage($name="Test.pdf", $storage = null, $folder = null);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostAppendDocument()
    {        
        $body = array("Document"=>"Test.pdf");
        $result = $this->pdf->PostAppendDocument($name="Output.pdf", $appendFile = null, $startPage = null, $endPage = null, $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
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
        $result = $this->pdf->PostCreateField($name="complaintform.pdf", $page=1, $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostDocumentReplaceText()
    {
        $body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
        $result = $this->pdf->PostDocumentReplaceText($name="Test.pdf", $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostDocumentReplaceTextList()
    {        
        $body = array('TextReplaces'=>array(array('OldValue'=>"sample", 'NewValue'=>"demo", 'Regex'=>'false'),
	array('OldValue'=>"document", 'NewValue'=>"page", 'Regex'=>'false')));
        $result = $this->pdf->PostDocumentReplaceTextList($name="Test.pdf", $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostMovePage()
    {
        $result = $this->pdf->PostMovePage($name="Test.pdf", $pageNumber=1, $newIndex=2, $storage = null, $folder = null);                 
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostPageReplaceText()
    {
        $body = array("OldValue" => "sample", "NewValue" => "demo", "Regex" => "false");
        $result = $this->pdf->PostPageReplaceText($name="Test.pdf", $pageNumber=1, $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostPageReplaceTextList()
    {        
        $body = array('TextReplaces'=>array(array('OldValue'=>"sample", 'NewValue'=>"demo", 'Regex'=>'false'),
	array('OldValue'=>"document", 'NewValue'=>"page", 'Regex'=>'false')));
        $result = $this->pdf->PostPageReplaceTextList($name="Test.pdf", $pageNumber=1, $storage = null, $folder = null, $body);         
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostReplaceImage()
    {
        $file = getcwd() . '/Data/Input/barcode.png';
        $result = $this->pdf->PostReplaceImage($name="Test.pdf", $pageNumber=1, $imageNumber=1, $imageFile = null, $storage = null, $folder = null, $file);                 
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSignDocument()
    {
        $body = '{
                    "SignaturePath": "temp.pfx",
                    "SignatureType": "PKCS7",
                    "Password": "password",
                    "Reason": "Success",
                    "Contact": "test@mail.ru",
                    "Location": "Ukraine",
                    "Visible": true,
                    "Rectangle": {
                      "X": 100,
                      "Y": 100,
                      "Width": 400,
                      "Height": 100
                    },
                    "FormFieldName": "Signature2",
                    "Authority": "Sergey Smal",
                    "Date": "1-1-2015"
                  }';
        $result = $this->pdf->PostSignDocument($name="signature.pdf", $storage = null, $folder = null, $body);         
        $result = json_decode($result);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSignPage()
    {
        $body = '{
                    "SignaturePath": "temp.pfx",
                    "SignatureType": "PKCS7",
                    "Password": "password",
                    "Reason": "Success",
                    "Contact": "test@mail.ru",
                    "Location": "Ukraine",
                    "Visible": true,
                    "Rectangle": {
                      "X": 100,
                      "Y": 100,
                      "Width": 400,
                      "Height": 100
                    },
                    "FormFieldName": "Signature2",
                    "Authority": "Sergey Smal",
                    "Date": "1-1-2015"
                  }';
        $result = $this->pdf->PostSignPage($name="signature.pdf", $pageNumber=1, $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSplitDocument()
    {
        $result = $this->pdf->PostSplitDocument($name="Test.pdf", $format = null, $from = null, $to = null, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutAddNewPage()
    {
        $result = $this->pdf->PutAddNewPage($name="Test.pdf", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutConvertDocument()
    {
        $file = getcwd(). '/Data/Input/Test.pdf';
        $result = $this->pdf->PutConvertDocument($format = "tiff", $url = null, $outPath = null, $file);        
        $fh = fopen(getcwd(). '/Data/Output/Test.tiff', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Test.tiff');
    }
    
    public function testPutCreateDocument()
    {
        $result = $this->pdf->PutCreateDocument($name="create.pdf", $templateFile = null, $dataFile = null, $templateType = null, $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutDocumentSaveAsTiff()
    {
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
        $result = $this->pdf->PutDocumentSaveAsTiff($name="Test.pdf", $resultFile = "Test.tiff", $brightness = null, $compression = null, $colorDepth = null, $leftMargin = null, $rightMargin = null, $topMargin = null, $bottomMargin = null, $orientation = null, $skipBlankPages = null, $width = null, $height = null, $xResolution = null, $yResolution = null, $pageIndex = null, $pageCount = null, $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutMergeDocuments()
    {        
        $body = array('List'=> array('index.pdf', 'Output.pdf'));
        $result = $this->pdf->PutMergeDocuments($name="Test.pdf", $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutPageAddStamp()
    {        
        $body = '{
                        "Type": 0,
                        "Background": true,
                        "BottomMargin": 2.0,
                        "HorizontalAlignment": 1,
                        "LeftMargin": 3.0,
                        "Opacity": 0.5,
                        "RightMargin": 0.0,
                        "Rotate": 3,
                        "RotateAngle": 45.0,
                        "TopMargin": 4.0,
                        "VerticalAlignment": 3,
                        "XIndent": 2.0,
                        "YIndent": 2.5,
                        "Zoom": 1.5,
                        "TextAlignment": 0,
                        "Value": "STAMP TEXT HERE",
                        "TextState": {
                          "FontSize": 14.0,
                          "Font": "Arial",
                          "ForegroundColor": {
                            "A": 0,
                            "R": 255,
                            "G": 0,
                            "B": 0
                          },
                          "BackgroundColor": {
                            "A": 0,
                            "R": 0,
                            "G": 0,
                            "B": 255
                          },
                          "FontStyle": 2
                        },
                        "FileName": null,
                        "Width": 0.0,
                        "Height": 0.0,
                        "PageIndex": 0,
                        "StartingNumber": 0
                      }';

        $result = $this->pdf->PutPageAddStamp($name="index.pdf", $pageNumber=1, $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutSetProperty()
    {        
        $body = array('Value'=> 'Mike');
        $result = $this->pdf->PutSetProperty($name="Test.pdf", $propertyName="Author", $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutUpdateField()
    {        
        $body = array("Name" => "ms", "Type" => "2", "Values" => array("1"));
        $result = $this->pdf->PutUpdateField($name="complaintform.pdf", $storage = null, $folder = null, $fieldName="ms", $body);                
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutUpdateFields()
    {        
        $body = '{
                    "List": [
                      {
                        "Name": "first",
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
        $result = $this->pdf->PutUpdateFields($name="complaintform.pdf", $storage = null, $folder = null, $body);                
        $this->assertEquals(200, $result->Code);
    }
                        
}    