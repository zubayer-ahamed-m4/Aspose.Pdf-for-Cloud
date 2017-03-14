//
//  Pages.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Pages : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)getPageWithFormat;
- (void)deletePage;
- (void)getPages;
- (void)postMovePage;
- (void)putAddNewPage;

@end
