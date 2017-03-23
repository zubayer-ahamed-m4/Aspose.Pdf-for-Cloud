//
//  Document.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Document.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Document

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)createNewDocument {
//ExStart:CreateNewDocument
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"newPDFFile.pdf"
                                         templateFile:nil
                                             dataFile:nil
                                         templateType:nil
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreateNewDocument
}

- (void)createPDFFromHTML {
//ExStart:CreatePDFFromHTML
    
    NSString *templateFile = @"sample.html";
    [Utils uploadFile:templateFile];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"newPDFFromHTML.pdf"
                                         templateFile:templateFile
                                             dataFile:nil
                                         templateType:@"html"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreatePDFFromHTML
}

- (void)createPDFFromJPEG {
//ExStart:CreatePDFFromJPEG
    
    NSString *templateFile = @"Einstein_JPEG.jpg";
    [Utils uploadFile:templateFile];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"sample-jpeg.pdf"
                                         templateFile:templateFile
                                             dataFile:nil
                                         templateType:@"jpeg"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreatePDFFromJPEG
}

- (void)createPDFFromSVG {
//ExStart:CreatePDFFromSVG
    NSString *templateFile = @"Example.svg";
    [Utils uploadFile:templateFile];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"sample-svg.pdf"
                                         templateFile:templateFile
                                             dataFile:nil
                                         templateType:@"svg"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreatePDFFromSVG
}

- (void)createPDFFromTIFF {
//ExStart:CreatePDFFromTIFF
    NSString *templateFile = @"Sample.tiff";
    [Utils uploadFile:templateFile];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"sample-tiff.pdf"
                                         templateFile:templateFile
                                             dataFile:nil
                                         templateType:@"tiff"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreatePDFFromTIFF
}

- (void)createPDFFromXML {
//ExStart:CreatePDFFromXML
    NSString *templateFile = @"sample.xsl";
    [Utils uploadFile:templateFile];
    NSString *dataFile = @"sample.xml";
    [Utils uploadFile:dataFile];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"newPDFFromXML.pdf"
                                         templateFile:templateFile
                                             dataFile:dataFile
                                         templateType:@"xml"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:CreatePDFFromXML
}

- (void)getDocumentWithFormat {
//ExStart:GetDocumentWithFormat
    NSString *fileName = @"LargeFile.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentWithFormatWithCompletionBlock:fileName
                                                   format:@"doc"
                                                  outPath:nil
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(NSURL *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:GetDocumentWithFormat
}

- (void)postAppendDocument {
//ExStart:PostAppendDocument
    NSString *fileName = @"Sample.pdf";
    [Utils uploadFile:fileName];
    NSString *appendFileName = @"sample-input.pdf";
    [Utils uploadFile:appendFileName];
    
    ASPAppendDocument *appendDocument = [[ASPAppendDocument alloc] init];
    appendDocument.document = appendFileName;
    appendDocument.startPage = [NSNumber numberWithInt:2];
    appendDocument.endPage = [NSNumber numberWithInt:3];
    
    [self.pdfApi postAppendDocumentWithCompletionBlock:fileName
                                        appendDocument:appendDocument
                                            appendFile:nil
                                             startPage:nil
                                               endPage:nil
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:PostAppendDocument
}

- (void)postSignPage {
//ExStart:PostSignPage
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    NSString *signatureFileName = @"pkc7-sample.pfx";
    [Utils uploadFile:signatureFileName];
    
    ASPSignature *signature = [[ASPSignature alloc] init];
    signature.authority =  @"Alexey";
    signature.location = @"London";
    signature.contact =  @"alexey@aspose.com";
    signature.date =  @"10/25/2015 2:46:00.000 PM";
    signature.formFieldName = @"Signature1";
    signature.password = @"aspose";
    
    ASPRectangle *rectangle = [[ASPRectangle alloc] init];
    rectangle.X = [NSNumber numberWithInt:100];
    rectangle.Y = [NSNumber numberWithInt:100];
    rectangle.height = [NSNumber numberWithInt:100];
    rectangle.width = [NSNumber numberWithInt:200];
    
    signature.rectangle = rectangle;
    signature.signaturePath = signatureFileName;
    signature.signatureType = @"PKCS7";
    signature.visible = [NSNumber numberWithBool:YES];
    
    [self.pdfApi postSignPageWithCompletionBlock:fileName
                                      pageNumber:[NSNumber numberWithInt:1]
                                       signature:signature
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                   NSLog(@"%@", output);
                               }];
//ExEnd:PostSignPage
}

- (void)postSplitDocument {
//ExStart:PostSplitDocument
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi postSplitDocumentWithCompletionBlock:fileName
                                               format:@"pdf"
                                                 from:[NSNumber numberWithInt:1]
                                                   to:[NSNumber numberWithInt:2]
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPSplitResultResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:PostSplitDocument
}

- (void)putConvertDocument {
//ExStart:PutConvertDocument
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Sample" withExtension:@"pdf"];
    
    [self.pdfApi putConvertDocumentWithCompletionBlock:pathToFile
                                                format:@"tiff"
                                replaceResourcesHostTo:nil
                                               outPath:nil
                                     completionHandler:^(NSURL *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:PutConvertDocument
}

- (void)putMergeDocuments {
//ExStart:PutMergeDocuments
    
    [Utils uploadFile:@"Sample.pdf"];
    [Utils uploadFile:@"sample-input.pdf"];
    
    ASPMergeDocuments *mergeDocuments = [[ASPMergeDocuments alloc] init];
    mergeDocuments.list = @[@"Sample.pdf", @"sample-input.pdf"];
    
    [self.pdfApi putMergeDocumentsWithCompletionBlock:@"sample-merged.pdf"
                                       mergeDocuments:mergeDocuments
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:PutMergeDocuments
}

@end
