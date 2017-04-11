//
//  Watermark.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Watermark : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)addImageStampToAPDFPage;
- (void)addPDFPageAsStampToPDFPage;
- (void)addPageNumberStampToPDFPage;
- (void)addPageStamp;

@end
