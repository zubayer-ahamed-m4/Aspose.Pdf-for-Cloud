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

	public function putConvertDocument() {
		$file = realpath(__DIR__ . '/../../..') . '/Data/Sample.pdf';
		$result = $this->pdfApi->PutConvertDocument($format = "tiff", $url = "", $outPath = "", $file);
		$fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Test.tiff', 'w');
		fwrite($fh, $result);
		fclose($fh);
	}
}

$document = new Document();
$document->putConvertDocument();

?>