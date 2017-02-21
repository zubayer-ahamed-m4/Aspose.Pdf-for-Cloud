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
use AsposePdfCloud::Object::DocumentProperty;

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
my $name =  'Sample-Annotation.pdf';
my $propertyName = 'AsposeDev';
my @documentPropertyBody = AsposePdfCloud::Object::DocumentProperty->new('Name' => 'AsposeDev', 'Value'=>'Farooq Sheikh', 'BuiltIn'=>'False' );

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

# Invoke Aspose.Pdf Cloud SDK API to set a PDF document property                         
$response = $pdfApi->PutSetProperty(name=>$name,propertyName=>$propertyName, body=>@documentPropertyBody);

if($response->{'Status'} eq 'OK'){
	my $docProp = $response->{'DocumentProperty'};
    print "\n $docProp->{'Name'} :: $docProp->{'Value'}";
}
#ExEnd:1