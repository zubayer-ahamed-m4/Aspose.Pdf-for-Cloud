//
//  FormField.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "FormField.h"
#import "ASPPdfApi.h"
#import "Utils.h"

@implementation FormField

- (id)init {
    self = [super init];
    
    self.pdfApi = [[ASPPdfApi alloc] init];
    
    return self;
}

- (void)getField {
//ExStart:GetField
    NSString *fileName = @"sample-field.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getFieldWithCompletionBlock:fileName
                                   fieldName:@"textbox1"
                                     storage:nil
                                      folder:nil
                           completionHandler:^(ASPFieldResponse *output, NSError *error) {
                               NSLog(@"%@", output);
                           }];
//ExEnd:GetField
}

- (void)getFields {
//ExStart:GetFields
    NSString *fileName = @"sample-field.pdf";
    [Utils uploadFile:fileName];
    
    [self.pdfApi getFieldsWithCompletionBlock:fileName
                                      storage:nil
                                       folder:nil
                            completionHandler:^(ASPFieldsResponse *output, NSError *error) {
                                NSLog(@"%@", output);
                            }];
//ExEnd:GetFields
}

- (void)putUpdateField {
//ExStart:PutUpdateField
    NSString *fileName = @"sample-field.pdf";
    [Utils uploadFile:fileName];
    
    NSString *fieldName = @"textbox1";
    
    ASPField *field = [[ASPField alloc] init];
    field.name = fieldName;
    field.values = @[@"Aspose"];
    
    [self.pdfApi putUpdateFieldWithCompletionBlock:fileName
                                             field:field
                                         fieldName:fieldName
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPFieldResponse *output, NSError *error) {
                                     NSLog(@"%@", output);
                                 }];
//ExEnd:PutUpdateField
}

@end
