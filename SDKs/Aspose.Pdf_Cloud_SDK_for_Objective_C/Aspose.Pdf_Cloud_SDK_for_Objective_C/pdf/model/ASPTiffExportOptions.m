#import "ASPTiffExportOptions.h"

@implementation ASPTiffExportOptions

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Brightness": @"brightness", @"Compression": @"compression", @"ColorDepth": @"colorDepth", @"LeftMargin": @"leftMargin", @"RightMargin": @"rightMargin", @"TopMargin": @"topMargin", @"BottomMargin": @"bottomMargin", @"Orientation": @"orientation", @"SkipBlankPages": @"skipBlankPages", @"Width": @"width", @"Height": @"height", @"XResolution": @"xResolution", @"YResolution": @"yResolution", @"PageIndex": @"pageIndex", @"PageCount": @"pageCount", @"ResultFile": @"resultFile" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"brightness", @"compression", @"colorDepth", @"leftMargin", @"rightMargin", @"topMargin", @"bottomMargin", @"orientation", @"skipBlankPages", @"width", @"height", @"xResolution", @"yResolution", @"pageIndex", @"pageCount", @"resultFile"];

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
