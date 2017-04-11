//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class FormField {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getFields() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-field.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetFields($fileName, $storage = "", $folder = "");
		print_r ( $result );
	}
}

$formField = new FormField();
$formField->getFields();

?>
//ExEnd:
