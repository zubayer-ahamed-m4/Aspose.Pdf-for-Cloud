<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Document {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function createPDFFromTIFF() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-tiff.pdf";
		$templateFile = "Sample.tiff";

		Utils::uploadFile($templateFile);

		$result = $this->pdfApi->PutCreateDocument($fileName, $templateFile, $dataFile = null, $templateType = "tiff", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$document = new Document();
$document->createPDFFromTIFF();

?>