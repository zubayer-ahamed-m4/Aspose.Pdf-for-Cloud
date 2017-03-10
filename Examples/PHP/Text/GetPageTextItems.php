<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Text {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getPageTextItems() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Annotation.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetPageTextItems($fileName, $pageNumber = 1, $withEmpty = "", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$text = new Text();
$text->getPageTextItems();

?>