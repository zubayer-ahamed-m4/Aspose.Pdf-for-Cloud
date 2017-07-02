//
//  Pages.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Pages.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Pages

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getPageWithFormat {
//ExStart:GetPageWithFormat
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageWithFormatWithCompletionBlock:fileName
                                           pageNumber:[NSNumber numberWithInt:1]
                                               format:@"png"
                                                width:[NSNumber numberWithInt:300]
                                               height:[NSNumber numberWithInt:300]
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(NSURL *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:GetPageWithFormat
}

- (void)deletePage {
//ExStart:DeletePage
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi deletePageWithCompletionBlock:fileName
                                    pageNumber:[NSNumber numberWithInt:1]
                                       storage:nil
                                        folder:nil
                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                 NSLog(@"%@", output);
                             }];
//ExEnd:DeletePage
}

- (void)getPages {
//ExStart:GetPages
    NSString *fileName = @"Sample-Annotation.pdf";
    //[Utils uploadFile:fileName];
    
    [self.pdfApi getPagesWithCompletionBlock:fileName
                                     storage:@"MyDropboxStorage"
                                      folder:@"HBD ECODropbox"
                           completionHandler:^(ASPDocumentPagesResponse *output, NSError *error) {
                               NSLog(@"%@", output);
                           }];
//ExEnd:GetPages
}

- (void)postMovePage {
//ExStart:PostMovePage
    NSString *fileName = @"sample-merged.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi postMovePageWithCompletionBlock:fileName
                                      pageNumber:[NSNumber numberWithInt:1]
                                        newIndex:[NSNumber numberWithInt:1]
                                         storage:nil
                                          folder:nil
                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                   NSLog(@"%@", output);
                               }];
//ExEnd:PostMovePage
}

- (void)putAddNewPage {
//ExStart:PutAddNewPage
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi putAddNewPageWithCompletionBlock:fileName
                                          storage:nil
                                           folder:nil
                                completionHandler:^(ASPDocumentPagesResponse *output, NSError *error) {
                                    NSLog(@"%@", output);
                                }];
//ExEnd:PutAddNewPage
}

@end
