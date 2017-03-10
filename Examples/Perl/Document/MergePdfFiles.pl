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
use AsposePdfCloud::Object::MergeDocuments;

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
my $name =  'sample-merged.pdf';
my $mergefilename1 = 'Sample.pdf';
my $mergefilename2 = 'sample-input.pdf';
my @mergeDocumentsBody = AsposePdfCloud::Object::MergeDocuments->new('List' => [$mergefilename1,$mergefilename2 ]);

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
$response = $storageApi->PutCreate(Path => $mergefilename1, file => $data_path.$mergefilename1);
$response = $storageApi->PutCreate(Path => $mergefilename2, file => $data_path.$mergefilename2);

# Invoke Aspose.Pdf Cloud SDK API to merge multiple PDF files                           
$response = $pdfApi->PutMergeDocuments(name=>$name,body=>@mergeDocumentsBody);

if($response->{'Status'} eq 'OK'){
    # Download merged document from storage server
    my $output_file = $out_path. 'merged-' . $name;
    $response = $storageApi->GetDownload(Path => $name);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1