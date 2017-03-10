<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class DocumentProperties {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getDocumentProperties() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Annotation.pdf";
		Utils::uploadFile($fileName);
		
		$result = $this->pdfApi->GetDocumentProperties($fileName, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$documentProperties = new DocumentProperties();
$documentProperties->getDocumentProperties();

?>