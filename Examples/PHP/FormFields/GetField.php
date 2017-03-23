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
	
	public function getField() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-field.pdf";
		Utils::uploadFile($fileName);

		$result = $this->pdfApi->GetField($fileName, $fieldName = "textbox1", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$formField = new FormField();
$formField->getField();

?>
//ExEnd:
