//
//  Attachment.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Attachment.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Attachment

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getDocumentAttachmentByIndex {
//ExStart:GetDocumentAttachmentByIndex
    NSString *fileName = @"SampleAttachment.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentAttachmentByIndexWithCompletionBlock:fileName
                                                 attachmentIndex:[NSNumber numberWithInt:1]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPAttachmentResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
//ExEnd:GetDocumentAttachmentByIndex
}

- (void)getDocumentAttachments {
//ExStart:GetDocumentAttachments
    NSString *fileName = @"SampleAttachment.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentAttachmentsWithCompletionBlock:fileName
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPAttachmentsResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:GetDocumentAttachments
}

- (void)getDownloadDocumentAttachmentByIndex {
//ExStart:GetDownloadDocumentAttachmentByIndex
    NSString *fileName = @"SampleAttachment.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDownloadDocumentAttachmentByIndexWithCompletionBlock:fileName
                                                         attachmentIndex:[NSNumber numberWithInt:1]
                                                                 storage:nil
                                                                  folder:nil
                                                       completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                           NSLog(@"%@", output);
                                                       }];
//ExEnd:GetDownloadDocumentAttachmentByIndex
}

@end
