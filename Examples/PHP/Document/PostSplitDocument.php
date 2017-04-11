//ExStart:
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

	public function postSplitDocument() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->PostSplitDocument($fileName, $format = "pdf", $from = 1, $to = 2, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$document = new Document();
$document->postSplitDocument();

?>
//ExEnd:
