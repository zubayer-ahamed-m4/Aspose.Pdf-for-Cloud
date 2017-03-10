<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Bookmark {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getDocumentBookmarks() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Bookmark.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetDocumentBookmarks($fileName, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$bookmark = new Bookmark();
$bookmark->getDocumentBookmarks();

?>