//
//  Images.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Images : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)getImageWithFormat;
- (void)getImages;
- (void)postReplaceImage;

@end
