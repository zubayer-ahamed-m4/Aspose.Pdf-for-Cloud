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

	public function createPDFFromHTML() {
		// Upload file to Aspose Cloud Storage
		$fileName = "newPDFFromHTML.pdf";
		$templateFile = "sample.html";

		Utils::uploadFile($templateFile);

		$result = $this->pdfApi->PutCreateDocument($fileName, $templateFile, $dataFile = null, $templateType = "html", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$document = new Document();
$document->createPDFFromHTML();

?>