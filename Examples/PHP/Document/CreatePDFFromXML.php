//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Document {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function createPDFFromXML() {
		// Upload file to Aspose Cloud Storage
		$fileName = "newPDFFromXML.pdf";
		$templateFile = "sample.xsl";
		$dataFile = "sample.xml";

		Utils::uploadFile($templateFile);
		Utils::uploadFile($dataFile);

		$result = $this->pdfApi->PutCreateDocument($fileName, $templateFile, $dataFile, $templateType = "xml", $storage = "", $folder = "");
		print_r ( $result );
	}
}

$document = new Document();
$document->createPDFFromXML();

?>
//ExEnd:
