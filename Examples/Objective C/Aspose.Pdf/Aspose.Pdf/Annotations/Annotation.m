//
//  Annotation.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Annotation.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation Annotation

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getPageAnnotation {
//ExStart:GetPageAnnotation
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageAnnotationWithCompletionBlock:fileName
                                           pageNumber:[NSNumber numberWithInt:1]
                                     annotationNumber:[NSNumber numberWithInt:1]
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPAnnotationResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:GetPageAnnotation
}

- (void)getPageAnnotations {
//ExStart:GetPageAnnotations
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getPageAnnotationsWithCompletionBlock:fileName
                                            pageNumber:[NSNumber numberWithInt:1]
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPAnnotationsResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:GetPageAnnotations
}


@end
