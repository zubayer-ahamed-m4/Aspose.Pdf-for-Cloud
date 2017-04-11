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

	public function getDocumentWithFormat() {
		// Upload file to Aspose Cloud Storage
		$fileName = "LargeFile.pdf";
		//Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetDocumentWithFormat($fileName, $format = "doc", $storage = "", $folder = "", $outPath = "");
		print_r ( $result );        
	}
}

$document = new Document();
$document->getDocumentWithFormat();

?>
//ExEnd:
