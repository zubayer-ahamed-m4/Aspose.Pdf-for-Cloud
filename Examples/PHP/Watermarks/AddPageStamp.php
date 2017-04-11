//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Watermark {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function addPageStamp() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);

		$body = array("Type"=>"Text", "Background"=>true, "Value"=>"Aspose");

		$result = $this->pdfApi->PutPageAddStamp($fileName, $pageNumber = 1, $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$watermark = new Watermark();
$watermark->addPageStamp();

?>
//ExEnd:
