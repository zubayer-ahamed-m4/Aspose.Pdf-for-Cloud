//
//  AppDelegate.m
//  Aspose.Pdf
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "AppDelegate.h"
#import "Utils.h"
#import "Annotation.h"
#import "Attachment.h"
#import "Bookmark.h"
#import "Document.h"
#import "DocumentProperties.h"
#import "FormField.h"
#import "Text.h"
#import "Images.h"
#import "Links.h"
#import "Pages.h"
#import "Watermark.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Get App key and App SID from https://cloud.aspose.com
    [Utils setAppKeyAndAppSID];
    
    // Annotations
    /*Annotation *annotation = [[Annotation alloc] init];
    [annotation getPageAnnotation];
    [annotation getPageAnnotations];
    
    // Attachments
    Attachment *attachment = [[Attachment alloc] init];
    [attachment getDocumentAttachmentByIndex];
    [attachment getDocumentAttachments];
    [attachment getDownloadDocumentAttachmentByIndex];
    
    // Bookmarks
    Bookmark *bookmark = [[Bookmark alloc] init];
    [bookmark getDocumentBookmarks];
    [bookmark getDocumentBookmarksChildren];*/
    
    // Document
    //Document *document = [[Document alloc] init];
    //[document createNewDocument];
    /*[document createPDFFromHTML];
    [document createPDFFromJPEG];
    [document createPDFFromSVG];
    [document createPDFFromTIFF];
    [document createPDFFromXML];
    [document getDocumentWithFormat];
    [document postAppendDocument];
    [document postSignPage];
    [document postSplitDocument];*/
    //[document putConvertDocument];
    //[document putMergeDocuments];
    
    // DocumentProperties
    /*DocumentProperties *documentProperties = [[DocumentProperties alloc] init];
    [documentProperties deleteProperties];
    [documentProperties getDocumentProperties];
    [documentProperties getDocumentProperty];
    [documentProperties putSetProperty];
    
    // FormFields
    FormField *formField = [[FormField alloc] init];
    [formField getField];
    [formField getFields];
    [formField putUpdateField];
    
    //Images
    Images *images = [[Images alloc] init];
    [images getImageWithFormat];
    [images getImages];
    [images postReplaceImage];
    
    //Links
    Links *links = [[Links alloc] init];
    [links getPageLinkAnnotationByIndex];
    [links getPageLinkAnnotations];*/
    
    //Pages
    Pages *pages = [[Pages alloc] init];
    //[pages getPageWithFormat];
    //[pages deletePage];
    [pages getPages];
    //[pages postMovePage];
    //[pages putAddNewPage];
    
    // Text
    /*Text *text = [[Text alloc] init];
    [text getFragment];
    [text getFragmentTextFormat];
    [text getFragments];
    [text getPageTextItems];
    [text getSegmentTextFormat];
    [text getSegments];
    [text testGetTextItems];
    [text testPostDocumentReplaceText];
    [text postDocumentReplaceTextList];
    [text testPostPageReplaceText];
    [text postPageReplaceTextList];
    
    // Watermarks
    Watermark *watermark = [[Watermark alloc] init];
    [watermark addImageStampToAPDFPage];
    [watermark addPDFPageAsStampToPDFPage];
    [watermark addPageNumberStampToPDFPage];
    [watermark addPageStamp];*/
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
