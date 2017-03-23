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

    public function postSignPage() {
        // Upload file to Aspose Cloud Storage
        $fileName = "sample-input.pdf";
        Utils::uploadFile($fileName);

        $signatureFileName = "pkc7-sample.pfx";
        Utils::uploadFile($signatureFileName);

        $body = '{
                    "SignaturePath": "pkc7-sample.pfx",
                    "SignatureType": "PKCS7",
                    "Password": "aspose",
                    "Reason": "Success",
                    "Contact": "alexey@aspose.com",
                    "Location": "London",
                    "Visible": true,
                    "Rectangle": {
                      "X": 100,
                      "Y": 100,
                      "Width": 200,
                      "Height": 100
                    },
                    "FormFieldName": "Signature1",
                    "Authority": "Alexey",
                    "Date": "10/25/2015 2:46:00.000 PM"
                  }';
        
        $result = $this->pdfApi->PostSignPage($fileName, $pageNumber = 1, $storage = "", $folder = "", $body);
        print_r ( $result );
    }
}

$document = new Document();
$document->postSignPage();

?>
//ExEnd:
