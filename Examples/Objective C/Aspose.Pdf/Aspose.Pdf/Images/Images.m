//
//  Images.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Images.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Images

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getImageWithFormat {
//ExStart:GetImageWithFormat
    NSString *fileName = @"SampleImage.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getImageWithFormatWithCompletionBlock:fileName
                                            pageNumber:[NSNumber numberWithInt:1]
                                           imageNumber:[NSNumber numberWithInt:1]
                                                format:@"jpeg"
                                                 width:nil
                                                height:nil
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(NSURL *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:GetImageWithFormat
}

- (void)getImages {
//ExStart:GetImages
    NSString *fileName = @"SampleImage.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getImagesWithCompletionBlock:fileName
                                   pageNumber:[NSNumber numberWithInt:1]
                                      storage:nil
                                       folder:nil
                            completionHandler:^(ASPImagesResponse *output, NSError *error) {
                                NSLog(@"%@", output);
                            }];
//ExEnd:GetImages
}

- (void)postReplaceImage {
//ExStart:PostReplaceImage
    NSString *fileName = @"SampleImage.pdf";
    [Utils uploadFile:fileName];
    
    NSString *imageFileName = @"aspose-cloud.png";
    [Utils uploadFile:imageFileName];
    
    [self.pdfApi postReplaceImageWithCompletionBlock:fileName
                                          pageNumber:[NSNumber numberWithInt:1]
                                         imageNumber:[NSNumber numberWithInt:1]
                                           imageFile:imageFileName
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPImageResponse *output, NSError *error) {
                                       NSLog(@"%@", output);
                                   }];
//ExEnd:PostReplaceImage
}

@end
