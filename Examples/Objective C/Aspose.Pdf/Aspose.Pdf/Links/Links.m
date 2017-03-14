//
//  Links.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Links.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Links

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getPageLinkAnnotationByIndex {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageLinkAnnotationByIndexWithCompletionBlock:fileName
                                                      pageNumber:[NSNumber numberWithInt:1]
                                                       linkIndex:[NSNumber numberWithInt:1]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPLinkAnnotationResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)getPageLinkAnnotations {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageLinkAnnotationsWithCompletionBlock:fileName
                                                pageNumber:[NSNumber numberWithInt:1]
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPLinkAnnotationsResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
}

@end
