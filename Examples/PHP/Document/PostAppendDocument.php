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

	public function postAppendDocument() {
        // Upload file to Aspose Cloud Storage
		$fileName = "Sample.pdf";
		Utils::uploadFile($fileName);
		$append_file_name = "sample-input.pdf";
		Utils::uploadFile($append_file_name);

        $body = array("Document"=>$append_file_name);
        $result = $this->pdfApi->PostAppendDocument($fileName, $appendFile = "", $startPage = 2, $endPage = 3, $storage = "", $folder = "", $body);         
        print_r ( $result );
	}
}

$document = new Document();
$document->postAppendDocument();

?>