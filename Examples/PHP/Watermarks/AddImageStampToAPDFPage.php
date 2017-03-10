<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Watermark {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function addImageStampToAPDFPage() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);
		$imageFile = "aspose-cloud.png";
		Utils::uploadFile($imageFile);

		$body = array("FileName"=>$imageFile, "Type"=>"Image", "Background"=>true, "Value"=>"ASPOSE Document", "PageIndex"=> 0, 
										"LeftMargin"=>0.0, "Opacity"=>0.5, "RightMargin"=>0.0, "TopMargin"=>0.0, "YIndent"=>100.0,
										"XIndent"=>100.0, "Zoom"=>1.0, "Width"=>300.0, "Height"=>300.0);

		$result = $this->pdfApi->PutPageAddStamp($name=$fileName, $pageNumber = 1, $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$watermark = new Watermark();
$watermark->addImageStampToAPDFPage();

?>