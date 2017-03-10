<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Pages {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function putAddNewPage() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);
		
		$result = $this->pdfApi->PutAddNewPage($fileName, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$pages = new Pages();
$pages->putAddNewPage();

?>