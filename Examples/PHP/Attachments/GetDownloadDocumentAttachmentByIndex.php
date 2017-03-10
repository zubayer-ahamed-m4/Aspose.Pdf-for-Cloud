<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Attachment {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function getDownloadDocumentAttachmentByIndex() {
		// Upload file to Aspose Cloud Storage
		$fileName = "SampleAttachment.pdf";
		Utils::uploadFile($fileName);

        $result = $this->pdfApi->GetDownloadDocumentAttachmentByIndex($name=$fileName, $attachmentIndex=1, $storage = "", $folder = "");        
		print_r ( $result );
	}
}

$attachment = new Attachment();
$attachment->getDownloadDocumentAttachmentByIndex();

?>