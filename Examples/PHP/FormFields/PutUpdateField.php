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

	public function putUpdateField() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-field.pdf";
		Utils::uploadFile($fileName);
		
		$body = array("Name" => "textbox1", "Values" => array("Aspose"));
		$result = $this->pdfApi->PutUpdateField($fileName, $storage = "", $folder = "", $fieldName = "textbox1", $body);
		print_r ( $result );
	}
}

$formField = new FormField();
$formField->putUpdateField();

?>
//ExEnd:
