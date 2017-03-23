//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Text {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function postDocumentReplaceTextList() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample-Annotation.pdf";
		Utils::uploadFile($fileName);

		$body = array('TextReplaces' => array(array('OldValue' => "Sample", 'NewValue' => "Sample Aspose", 'Regex' => false),
		array('OldValue' => "PDF", 'NewValue' => "PDF Document", 'Regex' => false)));
		$result = $this->pdfApi->PostDocumentReplaceTextList($fileName, $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$text = new Text();
$text->postDocumentReplaceTextList();

?>
//ExEnd:
