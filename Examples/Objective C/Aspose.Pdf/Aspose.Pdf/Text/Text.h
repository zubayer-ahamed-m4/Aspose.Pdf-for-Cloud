//
//  Text.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Text : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)getFragment;
- (void)getFragmentTextFormat;
- (void)getFragments;
- (void)getPageTextItems;
- (void)getSegmentTextFormat;
- (void)getSegments;
- (void)testGetTextItems;
- (void)testPostDocumentReplaceText;
- (void)postDocumentReplaceTextList;
- (void)testPostPageReplaceText;
- (void)postPageReplaceTextList;


@end
