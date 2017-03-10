#ExStart:1
use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;

use AsposePdfCloud::PdfApi;
use AsposePdfCloud::ApiClient;
use AsposePdfCloud::Configuration;
use AsposePdfCloud::Object::Rectangle;
use AsposePdfCloud::Object::Signature;

my $configFile = '../config/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);
my $data_path = '../../../Data/';
my $out_path = $configProps->{'out_folder'};

$AsposePdfCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposePdfCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposePdfCloud::Configuration::debug = 1;

$AsposeStorageCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeStorageCloud::Configuration::api_key = $configProps->{'api_key'};

# Instantiate Aspose.Storage and Aspose.Pdf API SDK
my $storageApi = AsposeStorageCloud::StorageApi->new();
my $pdfApi = AsposePdfCloud::PdfApi->new();

# Set input file name
my $name =  'sample-input-2.pdf';
my $signatureFileName = 'pkc7-sample.pfx';
my @rect = AsposePdfCloud::Object::Rectangle->new('X' => 100, 'Y' => 100, 'Height' => 100, 'Width' => 200);
my @textReplaceListRequestBody = AsposePdfCloud::Object::Signature->new(
		'Authority' => 'Naeem Akram',
		'Location' => 'Gojra',
		'Contact' => 'naeem.akram@aspose.com',
		'Date' => '05/09/2016 2:00:00.000 AM',
		'FormFieldName' =>  'Signature1',
		'Password' => 'aspose',
		'SignaturePath' => $signatureFileName,
		'SignatureType' => 'PKCS7',
		'Visible' => 'True',
		'Rectangle' => @rect
);

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
$response = $storageApi->PutCreate(Path => $signatureFileName, file => $data_path.$signatureFileName);

# Invoke Aspose.Pdf Cloud SDK API to sign PDF document                                             
$response = $pdfApi->PostSignDocument(name=>$name, body=>@textReplaceListRequestBody);

if($response->{'Status'} eq 'OK'){
	#download signed pdf from storage server
	my $output_file = $out_path. $name;
	$response = $storageApi->GetDownload(Path => $name);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1