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

	public function putMergeDocuments() {
		$fileName = "sample-merged.pdf";
		// Upload file to Aspose Cloud Storage
		$fileName1 = "Sample.pdf";
		Utils::uploadFile($fileName);
		$fileName2 = "sample-input.pdf";
		Utils::uploadFile($fileName1);

		$body = array('List' => array($fileName1, $fileName2));
		$result = $this->pdfApi->PutMergeDocuments($fileName, $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$document = new Document();
$document->putMergeDocuments();

?>