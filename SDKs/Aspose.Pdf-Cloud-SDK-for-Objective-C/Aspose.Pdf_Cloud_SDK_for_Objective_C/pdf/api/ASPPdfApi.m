#import "ASPPdfApi.h"
#import "ASPQueryParamCollection.h"
#import "ASPBaseResponse.h"
#import "ASPDocumentResponse.h"
#import "ASPTiffExportOptions.h"
#import "ASPAppendDocument.h"
#import "ASPAttachmentsResponse.h"
#import "ASPAttachmentResponse.h"
#import "ASPBookmarksResponse.h"
#import "ASPDocumentPropertiesResponse.h"
#import "ASPDocumentPropertyResponse.h"
#import "ASPDocumentProperty.h"
#import "ASPFieldsResponse.h"
#import "ASPFields.h"
#import "ASPField.h"
#import "ASPFieldResponse.h"
#import "ASPMergeDocuments.h"
#import "ASPDocumentPagesResponse.h"
#import "ASPWordCountResponse.h"
#import "ASPAnnotationsResponse.h"
#import "ASPAnnotationResponse.h"
#import "ASPTextItemsResponse.h"
#import "ASPTextItemResponse.h"
#import "ASPTextFormatResponse.h"
#import "ASPImagesResponse.h"
#import "ASPImageResponse.h"
#import "ASPBarcodeResponseList.h"
#import "ASPLinkAnnotationsResponse.h"
#import "ASPLinkAnnotationResponse.h"
#import "ASPPageTextReplaceResponse.h"
#import "ASPTextReplace.h"
#import "ASPTextReplaceListRequest.h"
#import "ASPSignature.h"
#import "ASPStamp.h"
#import "ASPDocumentTextReplaceResponse.h"
#import "ASPSplitResultResponse.h"


@interface ASPPdfApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation ASPPdfApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        ASPConfiguration *config = [ASPConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[ASPApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(ASPApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(ASPPdfApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static ASPPdfApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[ASPPdfApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ASPApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Convert document from request content to format specified.
///
///  @param file
///
///  @param format The format to convert.
///
///  @param replaceResourcesHostTo
///
///  @param outPath Path to save result
///
///  @returns NSURL*
///
-(NSNumber*) putConvertDocumentWithCompletionBlock: (NSURL*) file
                                            format: (NSString*) format
                            replaceResourcesHostTo: (NSString*) replaceResourcesHostTo
                                           outPath: (NSString*) outPath

                                 completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `putConvertDocument`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/convert"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(replaceResourcesHostTo != nil) {
        
        queryParams[@"replaceResourcesHostTo"] = replaceResourcesHostTo;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"multipart/form-data"]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}

///
/// Read common document info.
///
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) getDocumentWithCompletionBlock: (NSString*) name
                                    storage: (NSString*) storage
                                     folder: (NSString*) folder

                          completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocument`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPBaseResponse*)data, error);
                                      }
            ];
}

///
/// Convert document to specified format
/// 
///  @param name The document name.
///
///  @param format Convert document to this format
///
///  @param outPath 
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getDocumentWithFormatWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         outPath: (NSString*) outPath
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getDocumentWithFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Create new document.
/// 
///  @param name The new document name.
///
///  @param templateFile The template file server path if defined.
///
///  @param dataFile The data file path (for xml template only).
///
///  @param templateType The template type, can be xml or html.
///
///  @param storage The document storage.
///
///  @param folder The new document folder.
///
///  @returns ASPDocumentResponse*
///
-(NSNumber*) putCreateDocumentWithCompletionBlock: (NSString*) name
         templateFile: (NSString*) templateFile
         dataFile: (NSString*) dataFile
         templateType: (NSString*) templateType
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putCreateDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(templateFile != nil) {
        
        queryParams[@"templateFile"] = templateFile;
    }
    if(dataFile != nil) {
        
        queryParams[@"dataFile"] = dataFile;
    }
    if(templateType != nil) {
        
        queryParams[@"templateType"] = templateType;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentResponse*)data, error);
              }
          ];
}

///
/// Save document as Tiff image.
/// 
///  @param name The document name.
///
///  @param exportOptions {TiffExportOptions} with tiff export options.
///
///  @param resultFile The resulting file.
///
///  @param brightness The image brightness.
///
///  @param compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
///
///  @param colorDepth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
///
///  @param leftMargin Left image margin.
///
///  @param rightMargin Right image margin.
///
///  @param topMargin Top image margin.
///
///  @param bottomMargin Bottom image margin.
///
///  @param orientation Image orientation. Possible values are: None, Landscape, Portait.
///
///  @param skipBlankPages Skip blank pages flag.
///
///  @param width Image width.
///
///  @param height Image height.
///
///  @param xResolution Horizontal resolution.
///
///  @param yResolution Vertical resolution.
///
///  @param pageIndex Start page to export.
///
///  @param pageCount Number of pages to export.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putDocumentSaveAsTiffWithCompletionBlock: (NSString*) name
         exportOptions: (ASPTiffExportOptions*) exportOptions
         resultFile: (NSString*) resultFile
         brightness: (NSNumber*) brightness
         compression: (NSString*) compression
         colorDepth: (NSString*) colorDepth
         leftMargin: (NSNumber*) leftMargin
         rightMargin: (NSNumber*) rightMargin
         topMargin: (NSNumber*) topMargin
         bottomMargin: (NSNumber*) bottomMargin
         orientation: (NSString*) orientation
         skipBlankPages: (NSNumber*) skipBlankPages
         width: (NSNumber*) width
         height: (NSNumber*) height
         xResolution: (NSNumber*) xResolution
         yResolution: (NSNumber*) yResolution
         pageIndex: (NSNumber*) pageIndex
         pageCount: (NSNumber*) pageCount
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putDocumentSaveAsTiff`"];
    }
    
    // verify the required parameter 'exportOptions' is set
    if (exportOptions == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `exportOptions` when calling `putDocumentSaveAsTiff`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/SaveAs/tiff"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(resultFile != nil) {
        
        queryParams[@"resultFile"] = resultFile;
    }
    if(brightness != nil) {
        
        queryParams[@"brightness"] = brightness;
    }
    if(compression != nil) {
        
        queryParams[@"compression"] = compression;
    }
    if(colorDepth != nil) {
        
        queryParams[@"colorDepth"] = colorDepth;
    }
    if(leftMargin != nil) {
        
        queryParams[@"leftMargin"] = leftMargin;
    }
    if(rightMargin != nil) {
        
        queryParams[@"rightMargin"] = rightMargin;
    }
    if(topMargin != nil) {
        
        queryParams[@"topMargin"] = topMargin;
    }
    if(bottomMargin != nil) {
        
        queryParams[@"bottomMargin"] = bottomMargin;
    }
    if(orientation != nil) {
        
        queryParams[@"orientation"] = orientation;
    }
    if(skipBlankPages != nil) {
        
        queryParams[@"skipBlankPages"] = skipBlankPages;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(xResolution != nil) {
        
        queryParams[@"xResolution"] = xResolution;
    }
    if(yResolution != nil) {
        
        queryParams[@"yResolution"] = yResolution;
    }
    if(pageIndex != nil) {
        
        queryParams[@"pageIndex"] = pageIndex;
    }
    if(pageCount != nil) {
        
        queryParams[@"pageCount"] = pageCount;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = exportOptions;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Append document to existing one.
/// 
///  @param name The original document name.
///
///  @param appendDocument {AppendDocument} with the append document data.
///
///  @param appendFile Append file server path.
///
///  @param startPage Appending start page.
///
///  @param endPage Appending end page.
///
///  @param storage The documents storage.
///
///  @param folder The original document folder.
///
///  @returns ASPDocumentResponse*
///
-(NSNumber*) postAppendDocumentWithCompletionBlock: (NSString*) name
         appendDocument: (ASPAppendDocument*) appendDocument
         appendFile: (NSString*) appendFile
         startPage: (NSNumber*) startPage
         endPage: (NSNumber*) endPage
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postAppendDocument`"];
    }
    
    // verify the required parameter 'appendDocument' is set
    if (appendDocument == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `appendDocument` when calling `postAppendDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/appendDocument"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(appendFile != nil) {
        
        queryParams[@"appendFile"] = appendFile;
    }
    if(startPage != nil) {
        
        queryParams[@"startPage"] = startPage;
    }
    if(endPage != nil) {
        
        queryParams[@"endPage"] = endPage;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = appendDocument;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentResponse*)data, error);
              }
          ];
}

///
/// Read document attachments info.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAttachmentsResponse*
///
-(NSNumber*) getDocumentAttachmentsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAttachmentsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentAttachments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/attachments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAttachmentsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAttachmentsResponse*)data, error);
              }
          ];
}

///
/// Read document attachment info by its index.
/// 
///  @param name The document name.
///
///  @param attachmentIndex The attachment index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAttachmentResponse*
///
-(NSNumber*) getDocumentAttachmentByIndexWithCompletionBlock: (NSString*) name
         attachmentIndex: (NSNumber*) attachmentIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAttachmentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentAttachmentByIndex`"];
    }
    
    // verify the required parameter 'attachmentIndex' is set
    if (attachmentIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `attachmentIndex` when calling `getDocumentAttachmentByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/attachments/{attachmentIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (attachmentIndex != nil) {
        pathParams[@"attachmentIndex"] = attachmentIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAttachmentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAttachmentResponse*)data, error);
              }
          ];
}

///
/// Download document attachment content by its index.
///
///  @param name The document name.
///
///  @param attachmentIndex The attachment index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) getDownloadDocumentAttachmentByIndexWithCompletionBlock: (NSString*) name
                                                     attachmentIndex: (NSNumber*) attachmentIndex
                                                             storage: (NSString*) storage
                                                              folder: (NSString*) folder

                                                   completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDownloadDocumentAttachmentByIndex`"];
    }
    
    // verify the required parameter 'attachmentIndex' is set
    if (attachmentIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `attachmentIndex` when calling `getDownloadDocumentAttachmentByIndex`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/attachments/{attachmentIndex}/download"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (attachmentIndex != nil) {
        pathParams[@"attachmentIndex"] = attachmentIndex;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/plain"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPBaseResponse*)data, error);
                                      }
            ];
}

///
/// Read document bookmarks.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBookmarksResponse*
///
-(NSNumber*) getDocumentBookmarksWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBookmarksResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentBookmarks`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/bookmarks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBookmarksResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBookmarksResponse*)data, error);
              }
          ];
}

///
/// Read document bookmark/bookmarks (including children).
/// 
///  @param name The document name.
///
///  @param bookmarkPath The bookmark path.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) getDocumentBookmarksChildrenWithCompletionBlock: (NSString*) name
         bookmarkPath: (NSString*) bookmarkPath
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentBookmarksChildren`"];
    }
    
    // verify the required parameter 'bookmarkPath' is set
    if (bookmarkPath == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `bookmarkPath` when calling `getDocumentBookmarksChildren`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/bookmarks/{bookmarkPath}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (bookmarkPath != nil) {
        pathParams[@"bookmarkPath"] = bookmarkPath;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read document properties.
/// 
///  @param name 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPDocumentPropertiesResponse*
///
-(NSNumber*) getDocumentPropertiesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPropertiesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/documentproperties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertiesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertiesResponse*)data, error);
              }
          ];
}

///
/// Delete document properties.
/// 
///  @param name 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deletePropertiesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/documentproperties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read document property by name.
/// 
///  @param name 
///
///  @param propertyName 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPDocumentPropertyResponse*
///
-(NSNumber*) getDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `getDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Add/update document property.
/// 
///  @param name 
///
///  @param propertyName 
///
///  @param _property 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPDocumentPropertyResponse*
///
-(NSNumber*) putSetPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         _property: (ASPDocumentProperty*) _property
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putSetProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `putSetProperty`"];
    }
    
    // verify the required parameter '_property' is set
    if (_property == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_property` when calling `putSetProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = _property;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Delete document property.
/// 
///  @param name 
///
///  @param propertyName 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deletePropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `deleteProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get document fields.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPFieldsResponse*
///
-(NSNumber*) getFieldsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPFieldsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPFieldsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPFieldsResponse*)data, error);
              }
          ];
}

///
/// Update fields.
/// 
///  @param name The document name.
///
///  @param fields {Fields} with the fields data.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPFieldsResponse*
///
-(NSNumber*) putUpdateFieldsWithCompletionBlock: (NSString*) name
         fields: (ASPFields*) fields
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPFieldsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putUpdateFields`"];
    }
    
    // verify the required parameter 'fields' is set
    if (fields == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fields` when calling `putUpdateFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = fields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPFieldsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPFieldsResponse*)data, error);
              }
          ];
}

///
/// Create field.
/// 
///  @param name The document name.
///
///  @param page Document page number.
///
///  @param field {Field} with the field data.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCreateFieldWithCompletionBlock: (NSString*) name
         page: (NSNumber*) page
         field: (ASPField*) field
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCreateField`"];
    }
    
    // verify the required parameter 'page' is set
    if (page == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `page` when calling `postCreateField`"];
    }
    
    // verify the required parameter 'field' is set
    if (field == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `field` when calling `postCreateField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(page != nil) {
        
        queryParams[@"page"] = page;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = field;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get document field by name.
/// 
///  @param name The document name.
///
///  @param fieldName The field name/
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPFieldResponse*
///
-(NSNumber*) getFieldWithCompletionBlock: (NSString*) name
         fieldName: (NSString*) fieldName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPFieldResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getField`"];
    }
    
    // verify the required parameter 'fieldName' is set
    if (fieldName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fieldName` when calling `getField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/fields/{fieldName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (fieldName != nil) {
        pathParams[@"fieldName"] = fieldName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPFieldResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPFieldResponse*)data, error);
              }
          ];
}

///
/// Update field.
/// 
///  @param name The document name.
///
///  @param field {Field} with the field data.
///
///  @param fieldName 
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPFieldResponse*
///
-(NSNumber*) putUpdateFieldWithCompletionBlock: (NSString*) name
         field: (ASPField*) field
         fieldName: (NSString*) fieldName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPFieldResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putUpdateField`"];
    }
    
    // verify the required parameter 'field' is set
    if (field == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `field` when calling `putUpdateField`"];
    }
    
    // verify the required parameter 'fieldName' is set
    if (fieldName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fieldName` when calling `putUpdateField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/fields/{fieldName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (fieldName != nil) {
        pathParams[@"fieldName"] = fieldName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = field;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPFieldResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPFieldResponse*)data, error);
              }
          ];
}

///
/// Merge a list of documents.
/// 
///  @param name Resulting documen name.
///
///  @param mergeDocuments {MergeDocuments} with a list of documents.
///
///  @param storage Resulting document storage.
///
///  @param folder Resulting document folder.
///
///  @returns ASPDocumentResponse*
///
-(NSNumber*) putMergeDocumentsWithCompletionBlock: (NSString*) name
         mergeDocuments: (ASPMergeDocuments*) mergeDocuments
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putMergeDocuments`"];
    }
    
    // verify the required parameter 'mergeDocuments' is set
    if (mergeDocuments == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `mergeDocuments` when calling `putMergeDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/merge"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = mergeDocuments;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentResponse*)data, error);
              }
          ];
}

///
/// Read document pages info.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPDocumentPagesResponse*
///
-(NSNumber*) getPagesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPagesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPages`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPagesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPagesResponse*)data, error);
              }
          ];
}

///
/// Add new page to end of the document.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPDocumentPagesResponse*
///
-(NSNumber*) putAddNewPageWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPagesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putAddNewPage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPagesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPagesResponse*)data, error);
              }
          ];
}

///
/// Get number of words per document page.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWordCountResponse*
///
-(NSNumber*) getWordsPerPageWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWordCountResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWordsPerPage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/wordCount"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWordCountResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWordCountResponse*)data, error);
              }
          ];
}

///
/// Read document page info.
///
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) getPageWithCompletionBlock: (NSString*) name
                             pageNumber: (NSNumber*) pageNumber
                                storage: (NSString*) storage
                                 folder: (NSString*) folder

                      completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPage`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPBaseResponse*)data, error);
                                      }
            ];
}

///
/// Get page in specified format.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param format The page format.
///
///  @param width The page width.
///
///  @param height The page height.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getPageWithFormatWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         format: (NSString*) format
         width: (NSNumber*) width
         height: (NSNumber*) height
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageWithFormat`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getPageWithFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Delete document page by its number.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deletePageWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deletePage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `deletePage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read documant page annotations.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAnnotationsResponse*
///
-(NSNumber*) getPageAnnotationsWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAnnotationsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageAnnotations`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageAnnotations`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/annotations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAnnotationsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAnnotationsResponse*)data, error);
              }
          ];
}

///
/// Read document page annotation by its number.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param annotationNumber The annotation number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAnnotationResponse*
///
-(NSNumber*) getPageAnnotationWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         annotationNumber: (NSNumber*) annotationNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAnnotationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageAnnotation`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageAnnotation`"];
    }
    
    // verify the required parameter 'annotationNumber' is set
    if (annotationNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `annotationNumber` when calling `getPageAnnotation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (annotationNumber != nil) {
        pathParams[@"annotationNumber"] = annotationNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAnnotationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAnnotationResponse*)data, error);
              }
          ];
}

///
/// Read page fragments.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param withEmpty 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getFragmentsWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         withEmpty: (NSString*) withEmpty
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getFragments`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getFragments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(withEmpty != nil) {
        
        queryParams[@"withEmpty"] = withEmpty;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Read page fragment.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param fragmentNumber 
///
///  @param withEmpty 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getFragmentWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         fragmentNumber: (NSNumber*) fragmentNumber
         withEmpty: (NSString*) withEmpty
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getFragment`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getFragment`"];
    }
    
    // verify the required parameter 'fragmentNumber' is set
    if (fragmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fragmentNumber` when calling `getFragment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (fragmentNumber != nil) {
        pathParams[@"fragmentNumber"] = fragmentNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(withEmpty != nil) {
        
        queryParams[@"withEmpty"] = withEmpty;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Read fragment segments.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param fragmentNumber 
///
///  @param withEmpty 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getSegmentsWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         fragmentNumber: (NSNumber*) fragmentNumber
         withEmpty: (NSString*) withEmpty
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getSegments`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getSegments`"];
    }
    
    // verify the required parameter 'fragmentNumber' is set
    if (fragmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fragmentNumber` when calling `getSegments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (fragmentNumber != nil) {
        pathParams[@"fragmentNumber"] = fragmentNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(withEmpty != nil) {
        
        queryParams[@"withEmpty"] = withEmpty;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Read segment.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param fragmentNumber 
///
///  @param segmentNumber 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemResponse*
///
-(NSNumber*) getSegmentWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         fragmentNumber: (NSNumber*) fragmentNumber
         segmentNumber: (NSNumber*) segmentNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getSegment`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getSegment`"];
    }
    
    // verify the required parameter 'fragmentNumber' is set
    if (fragmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fragmentNumber` when calling `getSegment`"];
    }
    
    // verify the required parameter 'segmentNumber' is set
    if (segmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `segmentNumber` when calling `getSegment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (fragmentNumber != nil) {
        pathParams[@"fragmentNumber"] = fragmentNumber;
    }
    if (segmentNumber != nil) {
        pathParams[@"segmentNumber"] = segmentNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemResponse*)data, error);
              }
          ];
}

///
/// Read segment text format.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param fragmentNumber 
///
///  @param segmentNumber 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextFormatResponse*
///
-(NSNumber*) getSegmentTextFormatWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         fragmentNumber: (NSNumber*) fragmentNumber
         segmentNumber: (NSNumber*) segmentNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextFormatResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getSegmentTextFormat`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getSegmentTextFormat`"];
    }
    
    // verify the required parameter 'fragmentNumber' is set
    if (fragmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fragmentNumber` when calling `getSegmentTextFormat`"];
    }
    
    // verify the required parameter 'segmentNumber' is set
    if (segmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `segmentNumber` when calling `getSegmentTextFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textformat"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (fragmentNumber != nil) {
        pathParams[@"fragmentNumber"] = fragmentNumber;
    }
    if (segmentNumber != nil) {
        pathParams[@"segmentNumber"] = segmentNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextFormatResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextFormatResponse*)data, error);
              }
          ];
}

///
/// Read page fragment text format.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param fragmentNumber 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextFormatResponse*
///
-(NSNumber*) getFragmentTextFormatWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         fragmentNumber: (NSNumber*) fragmentNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextFormatResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getFragmentTextFormat`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getFragmentTextFormat`"];
    }
    
    // verify the required parameter 'fragmentNumber' is set
    if (fragmentNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `fragmentNumber` when calling `getFragmentTextFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (fragmentNumber != nil) {
        pathParams[@"fragmentNumber"] = fragmentNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextFormatResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextFormatResponse*)data, error);
              }
          ];
}

///
/// Read document images.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPImagesResponse*
///
-(NSNumber*) getImagesWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPImagesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImages`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getImages`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/images"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPImagesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPImagesResponse*)data, error);
              }
          ];
}

///
/// Read document image by number.
///
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param imageNumber The image number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) getImageWithCompletionBlock: (NSString*) name
                              pageNumber: (NSNumber*) pageNumber
                             imageNumber: (NSNumber*) imageNumber
                                 storage: (NSString*) storage
                                  folder: (NSString*) folder

                       completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getImage`"];
    }
    
    // verify the required parameter 'imageNumber' is set
    if (imageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `imageNumber` when calling `getImage`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/images/{imageNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (imageNumber != nil) {
        pathParams[@"imageNumber"] = imageNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPBaseResponse*)data, error);
                                      }
            ];
}

///
/// Get image in specified format.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param imageNumber The image number.
///
///  @param format The image format.
///
///  @param width The image width.
///
///  @param height The image height.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getImageWithFormatWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         imageNumber: (NSNumber*) imageNumber
         format: (NSString*) format
         width: (NSNumber*) width
         height: (NSNumber*) height
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getImageWithFormat`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getImageWithFormat`"];
    }
    
    // verify the required parameter 'imageNumber' is set
    if (imageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `imageNumber` when calling `getImageWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getImageWithFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/images/{imageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (imageNumber != nil) {
        pathParams[@"imageNumber"] = imageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Replace document image.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param imageNumber The image number.
///
///  @param imageFile Path to image file if specified. Request content is used otherwise.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPImageResponse*
///
-(NSNumber*) postReplaceImageWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         imageNumber: (NSNumber*) imageNumber
         imageFile: (NSString*) imageFile
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPImageResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postReplaceImage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `postReplaceImage`"];
    }
    
    // verify the required parameter 'imageNumber' is set
    if (imageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `imageNumber` when calling `postReplaceImage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/images/{imageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (imageNumber != nil) {
        pathParams[@"imageNumber"] = imageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(imageFile != nil) {
        
        queryParams[@"imageFile"] = imageFile;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPImageResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPImageResponse*)data, error);
              }
          ];
}

///
/// Recognize barcodes.
/// 
///  @param name Document name.
///
///  @param pageNumber Page number.
///
///  @param imageNumber Image number.
///
///  @param storage Document storage.
///
///  @param folder Document folder.
///
///  @returns ASPBarcodeResponseList*
///
-(NSNumber*) getExtractBarcodesWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         imageNumber: (NSNumber*) imageNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBarcodeResponseList* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getExtractBarcodes`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getExtractBarcodes`"];
    }
    
    // verify the required parameter 'imageNumber' is set
    if (imageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `imageNumber` when calling `getExtractBarcodes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/recognize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (imageNumber != nil) {
        pathParams[@"imageNumber"] = imageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBarcodeResponseList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBarcodeResponseList*)data, error);
              }
          ];
}

///
/// Read document page link annotations.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPLinkAnnotationsResponse*
///
-(NSNumber*) getPageLinkAnnotationsWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPLinkAnnotationsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageLinkAnnotations`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageLinkAnnotations`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/links"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPLinkAnnotationsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPLinkAnnotationsResponse*)data, error);
              }
          ];
}

///
/// Read document page link annotation by its index.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param linkIndex The link index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPLinkAnnotationResponse*
///
-(NSNumber*) getPageLinkAnnotationByIndexWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         linkIndex: (NSNumber*) linkIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPLinkAnnotationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageLinkAnnotationByIndex`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageLinkAnnotationByIndex`"];
    }
    
    // verify the required parameter 'linkIndex' is set
    if (linkIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `linkIndex` when calling `getPageLinkAnnotationByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/links/{linkIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    if (linkIndex != nil) {
        pathParams[@"linkIndex"] = linkIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPLinkAnnotationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPLinkAnnotationResponse*)data, error);
              }
          ];
}

///
/// Move page to new position.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param newIndex The new page position/index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postMovePageWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         newIndex: (NSNumber*) newIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postMovePage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `postMovePage`"];
    }
    
    // verify the required parameter 'newIndex' is set
    if (newIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newIndex` when calling `postMovePage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/movePage"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(newIndex != nil) {
        
        queryParams[@"newIndex"] = newIndex;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Page's replace text method.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param textReplace 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPPageTextReplaceResponse*
///
-(NSNumber*) postPageReplaceTextWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         textReplace: (ASPTextReplace*) textReplace
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPageTextReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postPageReplaceText`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `postPageReplaceText`"];
    }
    
    // verify the required parameter 'textReplace' is set
    if (textReplace == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textReplace` when calling `postPageReplaceText`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/replaceText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = textReplace;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPageTextReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPageTextReplaceResponse*)data, error);
              }
          ];
}

///
/// Page's replace text method.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param textReplaceListRequest 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPPageTextReplaceResponse*
///
-(NSNumber*) postPageReplaceTextListWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         textReplaceListRequest: (ASPTextReplaceListRequest*) textReplaceListRequest
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPageTextReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postPageReplaceTextList`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `postPageReplaceTextList`"];
    }
    
    // verify the required parameter 'textReplaceListRequest' is set
    if (textReplaceListRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textReplaceListRequest` when calling `postPageReplaceTextList`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/replaceTextList"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = textReplaceListRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPageTextReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPageTextReplaceResponse*)data, error);
              }
          ];
}

///
/// Sign page.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param signature {Signature} with the signature data.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postSignPageWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         signature: (ASPSignature*) signature
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSignPage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `postSignPage`"];
    }
    
    // verify the required parameter 'signature' is set
    if (signature == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `signature` when calling `postSignPage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/sign"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = signature;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Add page stamp.
/// 
///  @param name The document name.
///
///  @param pageNumber The page number.
///
///  @param stamp {Stamp} with data.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putPageAddStampWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         stamp: (ASPStamp*) stamp
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putPageAddStamp`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `putPageAddStamp`"];
    }
    
    // verify the required parameter 'stamp' is set
    if (stamp == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `stamp` when calling `putPageAddStamp`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/stamp"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = stamp;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read page text items.
/// 
///  @param name 
///
///  @param pageNumber 
///
///  @param withEmpty 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getPageTextItemsWithCompletionBlock: (NSString*) name
         pageNumber: (NSNumber*) pageNumber
         withEmpty: (NSString*) withEmpty
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPageTextItems`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `getPageTextItems`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/pages/{pageNumber}/textItems"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(withEmpty != nil) {
        
        queryParams[@"withEmpty"] = withEmpty;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Document's replace text method.
/// 
///  @param name 
///
///  @param textReplace 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPDocumentTextReplaceResponse*
///
-(NSNumber*) postDocumentReplaceTextWithCompletionBlock: (NSString*) name
         textReplace: (ASPTextReplace*) textReplace
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentTextReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postDocumentReplaceText`"];
    }
    
    // verify the required parameter 'textReplace' is set
    if (textReplace == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textReplace` when calling `postDocumentReplaceText`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/replaceText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = textReplace;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentTextReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentTextReplaceResponse*)data, error);
              }
          ];
}

///
/// Document's replace text method.
/// 
///  @param name 
///
///  @param textReplaceListRequest 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPDocumentTextReplaceResponse*
///
-(NSNumber*) postDocumentReplaceTextListWithCompletionBlock: (NSString*) name
         textReplaceListRequest: (ASPTextReplaceListRequest*) textReplaceListRequest
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentTextReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postDocumentReplaceTextList`"];
    }
    
    // verify the required parameter 'textReplaceListRequest' is set
    if (textReplaceListRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `textReplaceListRequest` when calling `postDocumentReplaceTextList`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/replaceTextList"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = textReplaceListRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentTextReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentTextReplaceResponse*)data, error);
              }
          ];
}

///
/// Sign document.
/// 
///  @param name The document name.
///
///  @param signature {Signature} with signature data.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postSignDocumentWithCompletionBlock: (NSString*) name
         signature: (ASPSignature*) signature
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSignDocument`"];
    }
    
    // verify the required parameter 'signature' is set
    if (signature == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `signature` when calling `postSignDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/sign"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = signature;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Split document to parts.
/// 
///  @param name Document name.
///
///  @param format Resulting documents format.
///
///  @param from Start page if defined.
///
///  @param to End page if defined.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPSplitResultResponse*
///
-(NSNumber*) postSplitDocumentWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         from: (NSNumber*) from
         to: (NSNumber*) to
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPSplitResultResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSplitDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/split"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(from != nil) {
        
        queryParams[@"from"] = from;
    }
    if(to != nil) {
        
        queryParams[@"to"] = to;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSplitResultResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPSplitResultResponse*)data, error);
              }
          ];
}

///
/// Read document text items.
/// 
///  @param name 
///
///  @param withEmpty 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getTextItemsWithCompletionBlock: (NSString*) name
         withEmpty: (NSString*) withEmpty
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTextItems`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pdf/{name}/textItems"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(withEmpty != nil) {
        
        queryParams[@"withEmpty"] = withEmpty;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}



@end
