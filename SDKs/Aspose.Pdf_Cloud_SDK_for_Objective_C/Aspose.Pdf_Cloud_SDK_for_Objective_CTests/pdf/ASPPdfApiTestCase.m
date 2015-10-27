//
//  ASPPdfApiTestCase.m
//  Aspose.Pdf_Cloud_SDK_for_ObjectiveC
//
//  Created by Muhammad Sohail Ismail on 24/10/2015.
//  Copyright © 2015 Aspose. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASPStorageApi.h"
#import "ASPPdfApi.h"

@interface ASPPdfApiTestCase : XCTestCase
@property(nonatomic, strong) ASPPdfApi *pdfApi;
@end

@implementation ASPPdfApiTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.pdfApi = [[ASPPdfApi alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)uploadFile:(NSString *) fileName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStorageApi *storageApi = [[ASPStorageApi alloc] init];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:[fileName stringByDeletingPathExtension] withExtension:[fileName pathExtension]];
    [storageApi putCreateWithCompletionBlock:fileName
                                        file:pathToFile
                                   versionId:nil
                                     storage:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to upload a specific file.");
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutConvertDocument {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Sample" withExtension:@"pdf"];
    
    [self.pdfApi putConvertDocumentWithCompletionBlock:pathToFile
                                                format:@"tiff"
                                replaceResourcesHostTo:nil
                                               outPath:nil
                                     completionHandler:^(NSURL *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to convert document from request content to format specified");
                                         [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


- (void)testGetDocument {
    NSString *fileName = @"Sample.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentWithCompletionBlock:fileName
                                        storage:nil
                                         folder:nil
                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to read common document info");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentWithFormat {
    
    NSString *fileName = @"Sample.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentWithFormatWithCompletionBlock:fileName
                                                   format:@"doc"
                                                  outPath:nil
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(NSURL *output, NSError *error) {
                                  XCTAssertNotNil(output, @"Failed to convert document to specified format");
                                  [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutCreateDocument {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi putCreateDocumentWithCompletionBlock:@"newPDFFile.pdf"
                                         templateFile:nil
                                             dataFile:nil
                                         templateType:nil
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to create new document");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutDocumentSaveAsTiff {
    
    NSString *fileName = @"Sample.pdf";
    [self uploadFile:fileName];
    NSString *resultFile = @"sample.tiff";
    [self uploadFile:resultFile];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTiffExportOptions *tiffExportOptions = [[ASPTiffExportOptions alloc] init];
    tiffExportOptions.resultFile = resultFile;
    
    [self.pdfApi putDocumentSaveAsTiffWithCompletionBlock:fileName
                                            exportOptions:tiffExportOptions
                                               resultFile:nil
                                               brightness:nil
                                              compression:nil
                                               colorDepth:nil
                                               leftMargin:nil
                                              rightMargin:nil
                                                topMargin:nil
                                             bottomMargin:nil
                                              orientation:nil
                                           skipBlankPages:nil
                                                    width:nil
                                                   height:nil
                                              xResolution:nil
                                              yResolution:nil
                                                pageIndex:nil
                                                pageCount:nil
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to save document as Tiff image");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostAppendDocument {
    NSString *fileName = @"Sample.pdf";
    [self uploadFile:fileName];
    NSString *appendFileName = @"sample-input.pdf";
    [self uploadFile:appendFileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
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
                                         XCTAssertNotNil(output, @"Failed to append document to existing one.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentAttachments {
    NSString *fileName = @"SampleAttachment.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentAttachmentsWithCompletionBlock:fileName
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPAttachmentsResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to read document attachments info.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentAttachmentByIndex {
    NSString *fileName = @"SampleAttachment.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentAttachmentByIndexWithCompletionBlock:fileName
                                                 attachmentIndex:[NSNumber numberWithInt:1]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPAttachmentResponse *output, NSError *error) {
                                                   XCTAssertNotNil(output, @"Failed to read document attachment info by its index");
                                                   XCTAssertEqualObjects(output.status, @"OK");
                                                   [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDownloadDocumentAttachmentByIndex {
    NSString *fileName = @"PDFWithFileAttachmentAnnotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDownloadDocumentAttachmentByIndexWithCompletionBlock:fileName
                                                         attachmentIndex:[NSNumber numberWithInt:1]
                                                                 storage:nil
                                                                  folder:nil
                                                       completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                           XCTAssertNotNil(output, @"Failed to download document attachment content by its index");
                                                           XCTAssertEqualObjects(output.status, @"OK");
                                                           [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentBookmarks {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentBookmarksWithCompletionBlock:fileName
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPBookmarksResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to read document bookmarks");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentBookmarksChildren {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentBookmarksChildrenWithCompletionBlock:fileName
                                                    bookmarkPath:@"1"
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   XCTAssertNotNil(output, @"Failed to read document bookmark/bookmarks (including children).");
                                                   XCTAssertEqualObjects(output.status, @"OK");
                                                   [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentProperties {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentPropertiesWithCompletionBlock:fileName
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPDocumentPropertiesResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read document properties");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProperties {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi deletePropertiesWithCompletionBlock:fileName
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to delete document properties.");
                                       XCTAssertEqualObjects(output.status, @"OK");
                                       [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentProperty {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getDocumentPropertyWithCompletionBlock:fileName
                                           propertyName:@"author"
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                          XCTAssertNotNil(output, @"Failed to read document property by name.");
                                          XCTAssertEqualObjects(output.status, @"OK");
                                          [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutSetProperty {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSString *propertyName = @"AsposeDev";
    
    ASPDocumentProperty *documentProperty = [[ASPDocumentProperty alloc] init];
    documentProperty.name = propertyName;
    documentProperty.value = @"Elon";
    documentProperty.builtIn = [NSNumber numberWithBool:NO];
    
    [self.pdfApi putSetPropertyWithCompletionBlock:fileName
                                      propertyName:propertyName
                                         _property:documentProperty
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to add/update document property.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProperty {
    NSString *fileName = @"Sample-Annotation-Property.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi deletePropertyWithCompletionBlock:fileName
                                      propertyName:@"AsposeDev"
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to delete document property");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetFields {
    NSString *fileName = @"sample-field.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getFieldsWithCompletionBlock:fileName
                                      storage:nil
                                       folder:nil
                            completionHandler:^(ASPFieldsResponse *output, NSError *error) {
                                XCTAssertNotNil(output, @"Failed to get document fields.");
                                XCTAssertEqualObjects(output.status, @"OK");
                                [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutUpdateFields {
    NSString *fileName = @"sample-field.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPField *field = [[ASPField alloc] init];
    field.name = @"textbox1";
    field.values = @[@"Aspose"];
    
    ASPFields *fields = [[ASPFields alloc] init];
    fields.list = (NSArray<ASPField>*)@[field];
    
    [self.pdfApi putUpdateFieldsWithCompletionBlock:fileName
                                             fields:fields
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPFieldsResponse *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to update fields.");
                                      XCTAssertEqualObjects(output.status, @"OK");
                                      [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCreateField {
    NSString *fileName = @"sample-field.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPField *field = [[ASPField alloc] init];
    field.name = @"checkBoxField2";
    field.values = @[@"1"];
    field.type = @"Boolean";
    
    ASPRectangle *rect = [[ASPRectangle alloc] init];
    rect.X = [NSNumber numberWithInt:100];
    rect.Y = [NSNumber numberWithInt:100];
    rect.height = [NSNumber numberWithInt:100];
    rect.width = [NSNumber numberWithInt:200];
    
    field.rect = rect;
    
    [self.pdfApi postCreateFieldWithCompletionBlock:fileName
                                               page:[NSNumber numberWithInt:1]
                                              field:field
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to create field.");
                                      XCTAssertEqualObjects(output.status, @"OK");
                                      [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetField {
    NSString *fileName = @"sample-field.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getFieldWithCompletionBlock:fileName
                                   fieldName:@"textbox1"
                                     storage:nil
                                      folder:nil
                           completionHandler:^(ASPFieldResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to get document field by name.");
                               XCTAssertEqualObjects(output.status, @"OK");
                               [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutUpdateField {
    NSString *fileName = @"sample-field.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSString *fieldName = @"textbox1";
    
    ASPField *field = [[ASPField alloc] init];
    field.name = fieldName;
    field.values = @[@"Aspose"];
    
    [self.pdfApi putUpdateFieldWithCompletionBlock:fileName
                                             field:field
                                         fieldName:fieldName
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPFieldResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to update field.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutMergeDocuments {
    
    [self uploadFile:@"Sample.pdf"];
    [self uploadFile:@"sample-input.pdf"];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPMergeDocuments *mergeDocuments = [[ASPMergeDocuments alloc] init];
    mergeDocuments.list = @[@"Sample.pdf", @"sample-input.pdf"];
    
    [self.pdfApi putMergeDocumentsWithCompletionBlock:@"sample-merged.pdf"
                                       mergeDocuments:mergeDocuments
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPDocumentResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to merge a list of documents");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPages {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPagesWithCompletionBlock:fileName
                                     storage:nil
                                      folder:nil
                           completionHandler:^(ASPDocumentPagesResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to read document pages info");
                               XCTAssertEqualObjects(output.status, @"OK");
                               [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutAddNewPage {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi putAddNewPageWithCompletionBlock:fileName
                                          storage:nil
                                           folder:nil
                                completionHandler:^(ASPDocumentPagesResponse *output, NSError *error) {
                                    XCTAssertNotNil(output, @"Failed to add new page to end of the document");
                                    XCTAssertEqualObjects(output.status, @"OK");
                                    [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWordsPerPage {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getWordsPerPageWithCompletionBlock:fileName
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPWordCountResponse *output, NSError *error) {
                                      XCTAssertNotNil(output, @"Failed to get number of words per document page.");
                                      XCTAssertEqualObjects(output.status, @"OK");
                                      [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPage {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageWithCompletionBlock:fileName
                                 pageNumber:[NSNumber numberWithInt:1]
                                    storage:nil
                                     folder:nil
                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                             XCTAssertNotNil(output, @"Failed to read document page info.");
                             XCTAssertEqualObjects(output.status, @"OK");
                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageWithFormat {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageWithFormatWithCompletionBlock:fileName
                                           pageNumber:[NSNumber numberWithInt:1]
                                               format:@"png"
                                                width:nil
                                               height:nil
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(NSURL *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to get page in specified format.");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeletePage {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi deletePageWithCompletionBlock:fileName
                                    pageNumber:[NSNumber numberWithInt:1]
                                       storage:nil
                                        folder:nil
                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                 XCTAssertNotNil(output, @"Failed to delete document page by its number.");
                                 XCTAssertEqualObjects(output.status, @"OK");
                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageAnnotations {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageAnnotationsWithCompletionBlock:fileName
                                            pageNumber:[NSNumber numberWithInt:1]
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPAnnotationsResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read documant page annotations.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageAnnotation {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageAnnotationWithCompletionBlock:fileName
                                           pageNumber:[NSNumber numberWithInt:1]
                                     annotationNumber:[NSNumber numberWithInt:1]
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPAnnotationResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read document page annotation by its number.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetFragments {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getFragmentsWithCompletionBlock:fileName
                                      pageNumber:[NSNumber numberWithInt:1]
                                       withEmpty:nil
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to read page fragments.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetFragment {
    
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getFragmentWithCompletionBlock:fileName
                                     pageNumber:[NSNumber numberWithInt:1]
                                 fragmentNumber:[NSNumber numberWithInt:1]
                                      withEmpty:nil
                                        storage:nil
                                         folder:nil
                              completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to read page fragment.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetSegments {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getSegmentsWithCompletionBlock:fileName
                                     pageNumber:[NSNumber numberWithInt:1]
                                 fragmentNumber:[NSNumber numberWithInt:1]
                                      withEmpty:nil
                                        storage:nil
                                         folder:nil
                              completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                 XCTAssertNotNil(output, @"Failed to read fragment segments.");
                                 XCTAssertEqualObjects(output.status, @"OK");
                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetSegment {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getSegmentTextFormatWithCompletionBlock:fileName
                                              pageNumber:[NSNumber numberWithInt:1]
                                          fragmentNumber:[NSNumber numberWithInt:1]
                                           segmentNumber:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPTextFormatResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read segment.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetSegmentTextFormat {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getSegmentTextFormatWithCompletionBlock:fileName
                                              pageNumber:[NSNumber numberWithInt:1]
                                          fragmentNumber:[NSNumber numberWithInt:1]
                                           segmentNumber:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPTextFormatResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read segment text format.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetFragmentTextFormat {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getFragmentTextFormatWithCompletionBlock:fileName
                                               pageNumber:[NSNumber numberWithInt:1]
                                           fragmentNumber:[NSNumber numberWithInt:1]
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPTextFormatResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to read page fragment text format.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImages {
    NSString *fileName = @"SampleImage.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getImagesWithCompletionBlock:fileName
                                   pageNumber:[NSNumber numberWithInt:1]
                                      storage:nil
                                       folder:nil
                            completionHandler:^(ASPImagesResponse *output, NSError *error) {
                                 XCTAssertNotNil(output, @"Failed to read document images.");
                                 XCTAssertEqualObjects(output.status, @"OK");
                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImage {
    NSString *fileName = @"SampleImage.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getImageWithCompletionBlock:fileName
                                  pageNumber:[NSNumber numberWithInt:1]
                                 imageNumber:[NSNumber numberWithInt:1]
                                     storage:nil
                                      folder:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                 XCTAssertNotNil(output, @"Failed to read document image by number.");
                                 XCTAssertEqualObjects(output.status, @"OK");
                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetImageWithFormat {
    NSString *fileName = @"SampleImage.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getImageWithFormatWithCompletionBlock:fileName
                                            pageNumber:[NSNumber numberWithInt:1]
                                           imageNumber:[NSNumber numberWithInt:1]
                                                format:@"jpeg"
                                                 width:nil
                                                height:nil
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(NSURL *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to get image in specified format.");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostReplaceImage {
    NSString *fileName = @"SampleImage.pdf";
    [self uploadFile:fileName];
    
    NSString *imageFileName = @"aspose-cloud.png";
    [self uploadFile:imageFileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi postReplaceImageWithCompletionBlock:fileName
                                          pageNumber:[NSNumber numberWithInt:1]
                                         imageNumber:[NSNumber numberWithInt:1]
                                           imageFile:imageFileName
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPImageResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to replace document image.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetExtractBarcodes {
    NSString *fileName = @"SampleBarCodeImage.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getExtractBarcodesWithCompletionBlock:fileName
                                            pageNumber:[NSNumber numberWithInt:1]
                                           imageNumber:[NSNumber numberWithInt:1]
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPBarcodeResponseList *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to recognize barcodes.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageLinkAnnotations {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageLinkAnnotationsWithCompletionBlock:fileName
                                                pageNumber:[NSNumber numberWithInt:1]
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPLinkAnnotationsResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read document page link annotations.");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageLinkAnnotationByIndex {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageLinkAnnotationByIndexWithCompletionBlock:fileName
                                                      pageNumber:[NSNumber numberWithInt:1]
                                                       linkIndex:[NSNumber numberWithInt:1]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPLinkAnnotationResponse *output, NSError *error) {
                                                     XCTAssertNotNil(output, @"Failed to read document page link annotation by its index.");
                                                     XCTAssertEqualObjects(output.status, @"OK");
                                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostMovePage {
    NSString *fileName = @"sample-merged.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi postMovePageWithCompletionBlock:fileName
                                      pageNumber:[NSNumber numberWithInt:1]
                                        newIndex:[NSNumber numberWithInt:1]
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                    XCTAssertNotNil(output, @"Failed to move page to new position.");
                                    XCTAssertEqualObjects(output.status, @"OK");
                                    [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostPageReplaceText {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTextReplace *textReplace = [[ASPTextReplace alloc] init];
    textReplace.oldValue = @"Sample PDF";
    textReplace.newerValue = @"Sample Aspose PDF";
    
    [self.pdfApi postPageReplaceTextWithCompletionBlock:fileName
                                             pageNumber:[NSNumber numberWithInt:1]
                                            textReplace:textReplace
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPPageTextReplaceResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to replace text");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostPageReplaceTextList {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTextReplaceListRequest *textReplaceListRequest = [[ASPTextReplaceListRequest alloc] init];
    
    ASPTextReplace *textRequest1 = [[ASPTextReplace alloc] init];
    textRequest1.oldValue = @"Sample";
    textRequest1.newerValue = @"Sample Aspose";
    
    ASPTextReplace *textRequest2 = [[ASPTextReplace alloc] init];
    textRequest2.oldValue = @"PDF";
    textRequest2.newerValue = @"PDF Document";
    
    textReplaceListRequest.textReplaces = (NSArray<ASPTextReplace>*)@[textRequest1, textRequest2];
    
    [self.pdfApi postPageReplaceTextListWithCompletionBlock:fileName
                                                 pageNumber:[NSNumber numberWithInt:1]
                                     textReplaceListRequest:textReplaceListRequest
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPPageTextReplaceResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to replace text");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostSignPage {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    NSString *signatureFileName = @"pkc7-sample.pfx";
    [self uploadFile:signatureFileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
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
                                     XCTAssertNotNil(output, @"Failed to sign page.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutPageAddStamp {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStamp *stamp = [[ASPStamp alloc] init];
    stamp.value = @"Aspose";
    stamp.background = [NSNumber numberWithBool:YES];
    stamp.type = @"Text";
    
    [self.pdfApi putPageAddStampWithCompletionBlock:fileName
                                         pageNumber:[NSNumber numberWithInt:1]
                                              stamp:stamp
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to add page stamp.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPageTextItems {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getPageTextItemsWithCompletionBlock:fileName
                                          pageNumber:[NSNumber numberWithInt:1]
                                           withEmpty:nil
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read page text items.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostDocumentReplaceText {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTextReplace *textReplace = [[ASPTextReplace alloc] init];
    textReplace.oldValue = @"Sample PDF";
    textReplace.newerValue = @"Sample Aspose PDF";
    
    [self.pdfApi postDocumentReplaceTextWithCompletionBlock:fileName
                                                textReplace:textReplace
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPDocumentTextReplaceResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to replace document's text.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostDocumentReplaceTextList {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTextReplaceListRequest *textReplaceListRequest = [[ASPTextReplaceListRequest alloc] init];
    
    ASPTextReplace *textReplace1 = [[ASPTextReplace alloc] init];
    textReplace1.oldValue = @"Sample";
    textReplace1.newerValue = @"Sample Aspose";
    textReplace1.regex = [NSNumber numberWithBool:NO];
    
    ASPTextReplace *textReplace2 = [[ASPTextReplace alloc] init];
    textReplace2.oldValue = @"PDF";
    textReplace2.newerValue = @"PDF Document";
    textReplace2.regex = [NSNumber numberWithBool:NO];
    
    textReplaceListRequest.textReplaces = (NSArray<ASPTextReplace>*)@[textReplace1/*, textReplace2*/];
    
    [self.pdfApi postDocumentReplaceTextListWithCompletionBlock:fileName
                                         textReplaceListRequest:textReplaceListRequest
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPDocumentTextReplaceResponse *output, NSError *error) {
                                                 XCTAssertNotNil(output, @"Failed to replace document's text.");
                                                 XCTAssertEqualObjects(output.status, @"OK");
                                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostSignDocument {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    NSString *signatureFileName = @"pkc7-sample.pfx";
    [self uploadFile:signatureFileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
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
    
    [self.pdfApi postSignDocumentWithCompletionBlock:fileName
                                           signature:signature
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to sign document.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


- (void)testPostSplitDocument {
    NSString *fileName = @"sample-input.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi postSplitDocumentWithCompletionBlock:fileName
                                               format:@"pdf"
                                                 from:[NSNumber numberWithInt:1]
                                                   to:[NSNumber numberWithInt:2]
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPSplitResultResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to split document to parts.");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTextItems {
    NSString *fileName = @"Sample-Annotation.pdf";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.pdfApi getTextItemsWithCompletionBlock:fileName
                                       withEmpty:nil
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to read document text items.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


@end
