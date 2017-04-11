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

	public function getImageWithFormat() {
        // Upload file to Aspose Cloud Storage
		$fileName = "SampleImage.pdf";
		Utils::uploadFile($fileName);

        $result = $this->pdfApi->GetImageWithFormat($fileName, $pageNumber=1, $imageNumber=1, $format="jpeg", $width = 100, $height = 100, $storage = "", $folder = "");
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Test.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$images = new Images();
$images->getImageWithFormat();

?>
//ExEnd:
