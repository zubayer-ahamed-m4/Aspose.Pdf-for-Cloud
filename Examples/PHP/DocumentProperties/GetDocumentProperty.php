<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class DocumentProperties {

	public pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getDocumentProperty() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetDocumentProperty($fileName, $propertyName = "Author", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$documentProperties = new DocumentProperties();
$documentProperties->getDocumentProperty();

?>