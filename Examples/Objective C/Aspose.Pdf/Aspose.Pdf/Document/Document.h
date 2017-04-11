//
//  Document.h
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPPdfApi;

@interface Document : NSObject

@property(nonatomic, strong) ASPPdfApi *pdfApi;

- (void)createNewDocument;
- (void)createPDFFromHTML;
- (void)createPDFFromJPEG;
- (void)createPDFFromSVG;
- (void)createPDFFromTIFF;
- (void)createPDFFromXML;
- (void)getDocumentWithFormat;
- (void)postAppendDocument;
- (void)postSignPage;
- (void)postSplitDocument;
- (void)putConvertDocument;
- (void)putMergeDocuments;

@end
