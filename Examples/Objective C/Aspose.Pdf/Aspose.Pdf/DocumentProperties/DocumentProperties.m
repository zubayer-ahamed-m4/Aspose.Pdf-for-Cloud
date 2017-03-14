//
//  DocumentProperties.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "DocumentProperties.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation DocumentProperties

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)deleteProperties {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi deletePropertiesWithCompletionBlock:fileName
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                       NSLog(@"%@", output);
                                   }];
}

- (void)getDocumentProperties {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentPropertiesWithCompletionBlock:fileName
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPDocumentPropertiesResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)getDocumentProperty {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getDocumentPropertyWithCompletionBlock:fileName
                                           propertyName:@"author"
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
}

- (void)putSetProperty {
    NSString *fileName = @"Sample-Annotation.pdf";
    [Utils uploadFile:fileName];
    
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
                                     NSLog(@"%@", output);
                                 }];
}

@end
