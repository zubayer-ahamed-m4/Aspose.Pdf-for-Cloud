//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Pages {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getPageWithFormat() {
        // Upload file to Aspose Cloud Storage
		$fileName = "Sample-Annotation.pdf";
		Utils::uploadFile($fileName);

        $result = $this->pdfApi->GetPageWithFormat($fileName, $pageNumber=1, $format="png", $width = null, $height = null, $storage = "", $folder = "");        
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Test.gif', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$pages = new Pages();
$pages->getPageWithFormat();

?>
//ExEnd:
