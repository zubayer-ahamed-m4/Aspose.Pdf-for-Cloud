//
//  Links.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Links : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)getPageLinkAnnotationByIndex;
- (void)getPageLinkAnnotations;

@end
