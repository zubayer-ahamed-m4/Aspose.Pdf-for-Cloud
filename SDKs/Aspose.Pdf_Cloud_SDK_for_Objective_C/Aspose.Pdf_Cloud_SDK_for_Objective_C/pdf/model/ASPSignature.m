#import "ASPSignature.h"

@implementation ASPSignature

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"SignaturePath": @"signaturePath", @"SignatureType": @"signatureType", @"Password": @"password", @"Contact": @"contact", @"Location": @"location", @"Visible": @"visible", @"Rectangle": @"rectangle", @"FormFieldName": @"formFieldName", @"Authority": @"authority", @"Date": @"date" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"signaturePath", @"signatureType", @"password", @"contact", @"location", @"visible", @"rectangle", @"formFieldName", @"authority", @"date"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
