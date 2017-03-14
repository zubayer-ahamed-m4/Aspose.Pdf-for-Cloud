//
//  Text.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Text.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Text

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getFragment {
    
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getFragmentWithCompletionBlock:fileName
                                     pageNumber:[NSNumber numberWithInt:1]
                                 fragmentNumber:[NSNumber numberWithInt:1]
                                      withEmpty:nil
                                        storage:nil
                                         folder:nil
                              completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                  NSLog(@"%@", output);
                              }];
}

- (void)getFragmentTextFormat {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getFragmentTextFormatWithCompletionBlock:fileName
                                               pageNumber:[NSNumber numberWithInt:1]
                                           fragmentNumber:[NSNumber numberWithInt:1]
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPTextFormatResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)getFragments {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getFragmentsWithCompletionBlock:fileName
                                      pageNumber:[NSNumber numberWithInt:1]
                                       withEmpty:nil
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                   NSLog(@"%@", output);
                               }];
}

- (void)getPageTextItems {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageTextItemsWithCompletionBlock:fileName
                                          pageNumber:[NSNumber numberWithInt:1]
                                           withEmpty:nil
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                       NSLog(@"%@", output);
                                   }];
}

- (void)getSegmentTextFormat {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getSegmentTextFormatWithCompletionBlock:fileName
                                              pageNumber:[NSNumber numberWithInt:1]
                                          fragmentNumber:[NSNumber numberWithInt:1]
                                           segmentNumber:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPTextFormatResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)getSegments {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getSegmentsWithCompletionBlock:fileName
                                     pageNumber:[NSNumber numberWithInt:1]
                                 fragmentNumber:[NSNumber numberWithInt:1]
                                      withEmpty:nil
                                        storage:nil
                                         folder:nil
                              completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                  NSLog(@"%@", output);
                              }];
}

- (void)testGetTextItems {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getTextItemsWithCompletionBlock:fileName
                                       withEmpty:nil
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                   NSLog(@"%@", output);
                               }];
}

- (void)testPostDocumentReplaceText {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    ASPTextReplace *textReplace = [[ASPTextReplace alloc] init];
    textReplace.oldValue = @"Sample PDF";
    textReplace.newerValue = @"Sample Aspose PDF";
    
    [self.pdfApi postDocumentReplaceTextWithCompletionBlock:fileName
                                                textReplace:textReplace
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPDocumentTextReplaceResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)postDocumentReplaceTextList {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    ASPTextReplaceListRequest *textReplaceListRequest = [[ASPTextReplaceListRequest alloc] init];
    
    ASPTextReplace *textReplace1 = [[ASPTextReplace alloc] init];
    textReplace1.oldValue = @"Sample";
    textReplace1.newerValue = @"Sample Aspose";
    textReplace1.regex = [NSNumber numberWithBool:NO];
    
    ASPTextReplace *textReplace2 = [[ASPTextReplace alloc] init];
    textReplace2.oldValue = @"PDF";
    textReplace2.newerValue = @"PDF Document";
    textReplace2.regex = [NSNumber numberWithBool:NO];
    
    textReplaceListRequest.textReplaces = (NSArray<ASPTextReplace>*)@[textReplace1, textReplace2];
    
    [self.pdfApi postDocumentReplaceTextListWithCompletionBlock:fileName
                                         textReplaceListRequest:textReplaceListRequest
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPDocumentTextReplaceResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)testPostPageReplaceText {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    ASPTextReplace *textReplace = [[ASPTextReplace alloc] init];
    textReplace.oldValue = @"Sample PDF";
    textReplace.newerValue = @"Sample Aspose PDF";
    
    [self.pdfApi postPageReplaceTextWithCompletionBlock:fileName
                                             pageNumber:[NSNumber numberWithInt:1]
                                            textReplace:textReplace
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPPageTextReplaceResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
}

- (void)postPageReplaceTextList {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
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
                                              NSLog(@"%@", output);
                                          }];
}

@end
