//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Links {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getPageLinkAnnotations() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Bookmark.pdf";
		Utils::uploadFile($fileName);
		
		$result = $this->pdfApi->GetPageLinkAnnotations($fileName, $pageNumber = 1, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$links = new Links();
$links->getPageLinkAnnotations();

?>
//ExEnd:
