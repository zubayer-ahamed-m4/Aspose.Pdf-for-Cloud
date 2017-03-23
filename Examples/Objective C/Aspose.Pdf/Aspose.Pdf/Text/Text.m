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
//ExStart:GetFragment
    
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
//ExEnd:GetFragment
}

- (void)getFragmentTextFormat {
//ExStart:GetFragmentTextFormat
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
//ExEnd:GetFragmentTextFormat
}

- (void)getFragments {
//ExStart:GetFragments
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
//ExEnd:GetFragments
}

- (void)getPageTextItems {
//ExStart:GetPageTextItems
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
//ExEnd:GetPageTextItems
}

- (void)getSegmentTextFormat {
//ExStart:GetSegmentTextFormat
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
//ExEnd:GetSegmentTextFormat
}

- (void)getSegments {
//ExStart:GetSegments
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
//ExEnd:GetSegments
}

- (void)testGetTextItems {
//ExStart:TestGetTextItems
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getTextItemsWithCompletionBlock:fileName
                                       withEmpty:nil
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                   NSLog(@"%@", output);
                               }];
//ExEnd:TestGetTextItems
}

- (void)testPostDocumentReplaceText {
//ExStart:TestPostDocumentReplaceText
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
//ExEnd:TestPostDocumentReplaceText
}

- (void)postDocumentReplaceTextList {
//ExStart:PostDocumentReplaceTextList
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
//ExEnd:PostDocumentReplaceTextList
}

- (void)testPostPageReplaceText {
//ExStart:TestPostPageReplaceText
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
//ExEnd:TestPostPageReplaceText
}

- (void)postPageReplaceTextList {
//ExStart:PostPageReplaceTextList
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
//ExEnd:PostPageReplaceTextList
}

@end
