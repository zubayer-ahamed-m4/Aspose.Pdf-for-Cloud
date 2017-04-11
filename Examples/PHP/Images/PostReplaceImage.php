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

	public function postReplaceImage() {
		// Upload file to Aspose Cloud Storage
		$fileName = "SampleImage.pdf";
		Utils::uploadFile($fileName);

		$file = realpath(__DIR__ . '/../../..') . '/Data/aspose-cloud.png';
		$result = $this->pdfApi->PostReplaceImage($fileName, $pageNumber = 1, $imageNumber = 1, $imageFile = "", $storage = "", $folder = "", $file);
		print_r ( $result );
	}
}

$images = new Images();
$images->postReplaceImage();

?>
//ExEnd:
