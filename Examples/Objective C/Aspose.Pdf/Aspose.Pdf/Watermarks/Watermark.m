//
//  Watermark.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Watermark.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Watermark

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)addImageStampToAPDFPage {
    
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    NSString *imageFile = @"aspose-cloud.png";
    [Utils uploadFile:imageFile];
    
    ASPStamp *stamp = [[ASPStamp alloc] init];
    stamp.fileName = imageFile;
    stamp.type = @"Image";
    stamp.background = [NSNumber numberWithBool:YES];
    stamp.value = @"ASPOSE Document";
    stamp.pageIndex = [NSNumber numberWithInt:0];
    stamp.leftMargin = [NSNumber numberWithFloat:0.0];
    stamp.opacity = [NSNumber numberWithFloat:0.5];
    stamp.rightMargin = [NSNumber numberWithFloat:0.0];
    stamp.topMargin = [NSNumber numberWithFloat:0.0];
    stamp.yIndent = [NSNumber numberWithFloat:100.0];
    stamp.xIndent = [NSNumber numberWithFloat:100.0];
    stamp.zoom = [NSNumber numberWithFloat:1.0];
    stamp.width = [NSNumber numberWithFloat:300.0];
    stamp.height = [NSNumber numberWithFloat:300.0];
    
    [self.pdfApi putPageAddStampWithCompletionBlock:fileName
                                         pageNumber:[NSNumber numberWithInt:1]
                                              stamp:stamp
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                      NSLog(@"%@", output);
                                  }];

}

- (void)addPDFPageAsStampToPDFPage {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    NSString *pdfName = @"Sample.pdf";
    [Utils uploadFile:pdfName];
    
    ASPStamp *stamp = [[ASPStamp alloc] init];
    stamp.fileName = pdfName;
    stamp.type = @"Image";
    stamp.background = [NSNumber numberWithBool:YES];
    stamp.pageIndex = [NSNumber numberWithInt:0];
    stamp.leftMargin = [NSNumber numberWithFloat:0.0];
    stamp.opacity = [NSNumber numberWithFloat:0.5];
    stamp.rightMargin = [NSNumber numberWithFloat:0.0];
    stamp.topMargin = [NSNumber numberWithFloat:0.0];
    stamp.yIndent = [NSNumber numberWithFloat:100.0];
    stamp.xIndent = [NSNumber numberWithFloat:100.0];
    stamp.zoom = [NSNumber numberWithFloat:1.0];
    stamp.width = [NSNumber numberWithFloat:300.0];
    stamp.height = [NSNumber numberWithFloat:300.0];
    
    [self.pdfApi putPageAddStampWithCompletionBlock:fileName
                                         pageNumber:[NSNumber numberWithInt:1]
                                              stamp:stamp
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                      NSLog(@"%@", output);
                                  }];
}

- (void)addPageNumberStampToPDFPage {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    ASPStamp *stamp = [[ASPStamp alloc] init];
    stamp.type = @"PageNumber";
    stamp.background = [NSNumber numberWithBool:YES];
    stamp.value = @"Page # of 2";
    stamp.pageIndex = [NSNumber numberWithInt:0];
    stamp.leftMargin = [NSNumber numberWithFloat:0.0];
    stamp.opacity = [NSNumber numberWithFloat:0.5];
    stamp.rightMargin = [NSNumber numberWithFloat:0.0];
    stamp.topMargin = [NSNumber numberWithFloat:0.0];
    stamp.yIndent = [NSNumber numberWithFloat:100.0];
    stamp.xIndent = [NSNumber numberWithFloat:100.0];
    stamp.zoom = [NSNumber numberWithFloat:1.0];
    stamp.width = [NSNumber numberWithFloat:300.0];
    stamp.height = [NSNumber numberWithFloat:300.0];
    stamp.startingNumber = [NSNumber numberWithInt:1];
    
    [self.pdfApi putPageAddStampWithCompletionBlock:fileName
                                         pageNumber:[NSNumber numberWithInt:1]
                                              stamp:stamp
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                      NSLog(@"%@", output);
                                  }];
}

- (void)addPageStamp {
    NSString *fileName = @"sample-input.pdf";
    [Utils uploadFile:fileName];
    
    ASPStamp *stamp = [[ASPStamp alloc] init];
    stamp.type = @"Text";
    stamp.background = [NSNumber numberWithBool:YES];
    stamp.value = @"Aspose";
    
    [self.pdfApi putPageAddStampWithCompletionBlock:fileName
                                         pageNumber:[NSNumber numberWithInt:1]
                                              stamp:stamp
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                      NSLog(@"%@", output);
                                  }];
}

@end
