#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPRectangle.h"


@protocol ASPSignature
@end

@interface ASPSignature : ASPObject

/* The SignaturePath [optional]
 */
@property(nonatomic) NSString* signaturePath;
/* The SignatureType [optional]
 */
@property(nonatomic) NSString* signatureType;
/* The Password [optional]
 */
@property(nonatomic) NSString* password;
/* The Contact [optional]
 */
@property(nonatomic) NSString* contact;
/* The Location [optional]
 */
@property(nonatomic) NSString* location;
/* The Visible [optional]
 */
@property(nonatomic) NSNumber* visible;
/* The Rectangle [optional]
 */
@property(nonatomic) ASPRectangle* rectangle;
/* The FormFieldName [optional]
 */
@property(nonatomic) NSString* formFieldName;
/* The Authority [optional]
 */
@property(nonatomic) NSString* authority;
/* The Date [optional]
 */
@property(nonatomic) NSString* date;

@end