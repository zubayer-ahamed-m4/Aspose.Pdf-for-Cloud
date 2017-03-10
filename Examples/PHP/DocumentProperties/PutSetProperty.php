<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class DocumentProperties {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function putSetProperty() {
		$fileName = "Sample-Annotation.pdf";
		
		$body = array('Value' => 'Mike');
		$result = $this->pdfApi->PutSetProperty($fileName, $propertyName = "author", $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$documentProperties = new DocumentProperties();
$documentProperties->putSetProperty();

?>
