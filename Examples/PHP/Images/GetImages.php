//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Images {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getImages() {
		// Upload file to Aspose Cloud Storage
		$fileName = "SampleImage.pdf";
		Utils::uploadFile($fileName);
		
		$result = $this->pdfApi->GetImages($fileName, $pageNumber = 1, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$images = new Images();
$images->getImages();

?>
//ExEnd:
