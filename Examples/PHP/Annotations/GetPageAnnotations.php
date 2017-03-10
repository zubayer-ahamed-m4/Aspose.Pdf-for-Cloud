<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Annotation {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getPageAnnotations() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Annotation.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetPageAnnotations($fileName, $pageNumber = 1, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$annotation = new Annotation();
$annotation->getPageAnnotations();

?>
