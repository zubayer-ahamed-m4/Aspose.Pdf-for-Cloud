//
//  Bookmark.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Bookmark.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Bookmark

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getDocumentBookmarks {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentBookmarksWithCompletionBlock:fileName
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPBookmarksResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)getDocumentBookmarksChildren {
    NSString *fileName = @"Sample-Bookmark.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentBookmarksChildrenWithCompletionBlock:fileName
                                                    bookmarkPath:@"1"
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}



@end
