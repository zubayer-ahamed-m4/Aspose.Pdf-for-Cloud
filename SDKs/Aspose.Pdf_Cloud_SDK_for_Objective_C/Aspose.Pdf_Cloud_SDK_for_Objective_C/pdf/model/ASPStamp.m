#import "ASPStamp.h"

@implementation ASPStamp

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Type": @"type", @"Background": @"background", @"BottomMargin": @"bottomMargin", @"HorizontalAlignment": @"horizontalAlignment", @"LeftMargin": @"leftMargin", @"Opacity": @"opacity", @"RightMargin": @"rightMargin", @"Rotate": @"rotate", @"RotateAngle": @"rotateAngle", @"TopMargin": @"topMargin", @"VerticalAlignment": @"verticalAlignment", @"XIndent": @"xIndent", @"YIndent": @"yIndent", @"Zoom": @"zoom", @"TextAlignment": @"textAlignment", @"Value": @"value", @"TextState": @"textState", @"FileName": @"fileName", @"Width": @"width", @"Height": @"height", @"PageIndex": @"pageIndex", @"StartingNumber": @"startingNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"type", @"background", @"bottomMargin", @"horizontalAlignment", @"leftMargin", @"opacity", @"rightMargin", @"rotate", @"rotateAngle", @"topMargin", @"verticalAlignment", @"xIndent", @"yIndent", @"zoom", @"textAlignment", @"value", @"textState", @"fileName", @"width", @"height", @"pageIndex", @"startingNumber"];

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
