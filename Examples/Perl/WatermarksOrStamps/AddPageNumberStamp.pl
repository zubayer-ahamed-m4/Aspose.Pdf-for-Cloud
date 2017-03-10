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
use AsposePdfCloud::Object::Stamp;

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
my $name =  'SampleImage.pdf';
my $pageNumber =  1;
my @stampBody = AsposePdfCloud::Object::Stamp->new( 
		'PageIndex' => 1,
		'Value' => 'Page # of 2',
		'Type' => 'PageNumber',
		'StartingNumber' =>  1,
		'LeftMargin' =>  0.0,
		'Opacity' =>  0.5,
		'RightMargin' =>  0.0,
		'TopMargin' =>  0.0,
		'YIndent' =>  100.0,
		'XIndent' =>  100.0,
		'Zoom' =>  1.0,
		'Width' =>  300.0,
		'Height' =>  300.0	);

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

# Invoke Aspose.Pdf Cloud SDK API to insert page number stamp to a PDF page                             
$response = $pdfApi->PutPageAddStamp(name=>$name, pageNumber=>$pageNumber, body=>@stampBody);

if($response->{'Status'} eq 'OK'){
    # Download document from storage server
    my $output_file = $out_path. $name;
    $response = $storageApi->GetDownload(Path => $name);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1