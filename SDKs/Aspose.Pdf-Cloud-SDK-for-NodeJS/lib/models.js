exports.models = {
  "TextReplace": {
  "properties" : {
    "OldValue" : {
      "type" : "string"
    },
    "NewValue" : {
      "type" : "string"
    },
    "Regex" : {
      "type" : "boolean"
    }
  },
  "id" : "TextReplace"
},"TextEffect": {
  "id" : "TextEffect"
},"SplitResultResponse": {
  "properties" : {
    "Result" : {
      "$ref" : "SplitResult"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SplitResultResponse"
},"Attachment": {
  "properties" : {
    "Description" : {
      "type" : "string"
    },
    "MimeType" : {
      "type" : "string"
    },
    "Name" : {
      "type" : "string"
    },
    "CreationDate" : {
      "type" : "string"
    },
    "ModificationDate" : {
      "type" : "string"
    },
    "Size" : {
      "$ref" : "int"
    },
    "CheckSum" : {
      "type" : "string"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Attachment"
},"ImagesResponse": {
  "properties" : {
    "Images" : {
      "$ref" : "Images"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ImagesResponse"
},"TextItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "TextItem"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "TextItems"
},"AttachmentResponse": {
  "properties" : {
    "Attachment" : {
      "$ref" : "Attachment"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AttachmentResponse"
},"LinkAnnotation": {
  "properties" : {
    "ActionType" : {
      "$ref" : "LinkActionType"
    },
    "Action" : {
      "type" : "string"
    },
    "Highlighting" : {
      "$ref" : "LinkHighlightingMode"
    },
    "Color" : {
      "$ref" : "Color"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "LinkAnnotation"
},"Images": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "Image"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Images"
},"MergeDocuments": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    }
  },
  "id" : "MergeDocuments"
},"LinkAnnotationResponse": {
  "properties" : {
    "Link" : {
      "$ref" : "LinkAnnotation"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "LinkAnnotationResponse"
},"TextFormat": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "FontSize" : {
      "$ref" : "float"
    },
    "FontName" : {
      "type" : "string"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "TextFormat"
},"FieldResponse": {
  "properties" : {
    "Field" : {
      "$ref" : "Field"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "FieldResponse"
},"LinkElement": {
  "properties" : {
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "LinkElement"
},"ResponseMessage": {
  "properties" : {
    "Code" : {
      "$ref" : "int"
    },
    "Message" : {
      "type" : "string"
    }
  },
  "id" : "ResponseMessage"
},"AnnotationResponse": {
  "properties" : {
    "Annotation" : {
      "$ref" : "Annotation"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AnnotationResponse"
},"PaperSize": {
  "id" : "PaperSize"
},"DocumentPagesResponse": {
  "properties" : {
    "Pages" : {
      "$ref" : "Pages"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentPagesResponse"
},"Page": {
  "properties" : {
    "Id" : {
      "$ref" : "int"
    },
    "Images" : {
      "$ref" : "Images"
    },
    "Rectangle" : {
      "$ref" : "Rectangle"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Page"
},"DocumentTextReplaceResponse": {
  "properties" : {
    "Document" : {
      "$ref" : "Document"
    },
    "Matches" : {
      "$ref" : "int"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentTextReplaceResponse"
},"WordCount": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "PageWordCount"
      }
    }
  },
  "id" : "WordCount"
},"HttpStatusCode": {
  "id" : "HttpStatusCode"
},"Pages": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "Page"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Pages"
},"DocumentPropertiesResponse": {
  "properties" : {
    "DocumentProperties" : {
      "$ref" : "DocumentProperties"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentPropertiesResponse"
},"LinkActionType": {
  "id" : "LinkActionType"
},"SplitResultDocument": {
  "properties" : {
    "Id" : {
      "$ref" : "int"
    },
    "Href" : {
      "type" : "string"
    },
    "Rel" : {
      "type" : "string"
    },
    "Type" : {
      "type" : "string"
    },
    "Title" : {
      "type" : "string"
    }
  },
  "id" : "SplitResultDocument"
},"PageWordCount": {
  "properties" : {
    "PageNumber" : {
      "$ref" : "int"
    },
    "Count" : {
      "$ref" : "int"
    }
  },
  "id" : "PageWordCount"
},"Int32": {
  "id" : "Int32"
},"NumberStyle": {
  "id" : "NumberStyle"
},"DocumentProperties": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "DocumentProperty"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "DocumentProperties"
},"AppendDocument": {
  "properties" : {
    "Document" : {
      "type" : "string"
    },
    "StartPage" : {
      "$ref" : "int"
    },
    "EndPage" : {
      "$ref" : "int"
    }
  },
  "id" : "AppendDocument"
},"Color": {
  "properties" : {
    "A" : {
      "type" : "string"
    },
    "R" : {
      "type" : "string"
    },
    "G" : {
      "type" : "string"
    },
    "B" : {
      "type" : "string"
    }
  },
  "id" : "Color"
},"BarcodeResponseList": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "BarcodeResponseList"
},"AnnotationsResponse": {
  "properties" : {
    "Annotations" : {
      "$ref" : "Annotations"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AnnotationsResponse"
},"VerticalAlignment": {
  "id" : "VerticalAlignment"
},"TextFormatResponse": {
  "properties" : {
    "TextFormat" : {
      "$ref" : "TextFormat"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TextFormatResponse"
},"TextItem": {
  "properties" : {
    "Text" : {
      "type" : "string"
    },
    "Format" : {
      "$ref" : "TextFormat"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "TextItem"
},"AttachmentsResponse": {
  "properties" : {
    "Attachments" : {
      "$ref" : "Attachments"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AttachmentsResponse"
},"String": {
  "properties" : {
    "Chars" : {
      "$ref" : "char"
    },
    "Length" : {
      "$ref" : "int"
    }
  },
  "id" : "String"
},"SectionStart": {
  "id" : "SectionStart"
},"FontStyles": {
  "id" : "FontStyles"
},"HttpResponseMessage": {
  "properties" : {
    "Content" : {
      "type" : "string"
    },
    "Headers" : {
      "type" : "string"
    },
    "IsSuccessStatusCode" : {
      "$ref" : "bool"
    },
    "ReasonPhrase" : {
      "type" : "string"
    },
    "RequestMessage" : {
      "type" : "string"
    },
    "StatusCode" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "string"
    }
  },
  "id" : "HttpResponseMessage"
},"Rotation": {
  "id" : "Rotation"
},"PageBorderAppliesTo": {
  "id" : "PageBorderAppliesTo"
},"WordCountResponse": {
  "properties" : {
    "WordsPerPage" : {
      "$ref" : "WordCount"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WordCountResponse"
},"Field": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Type" : {
      "$ref" : "FieldType"
    },
    "Values" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    },
    "SelectedItems" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    },
    "Rect" : {
      "$ref" : "Rectangle"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Field"
},"DocumentResponse": {
  "properties" : {
    "Document" : {
      "$ref" : "Document"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentResponse"
},"HorizontalAlignment": {
  "id" : "HorizontalAlignment"
},"LinkAnnotationsResponse": {
  "properties" : {
    "Links" : {
      "$ref" : "LinkAnnotations"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "LinkAnnotationsResponse"
},"LinkAnnotations": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "LinkAnnotations"
},"DocumentPropertyResponse": {
  "properties" : {
    "DocumentProperty" : {
      "$ref" : "DocumentProperty"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentPropertyResponse"
},"TextItemResponse": {
  "properties" : {
    "TextItem" : {
      "$ref" : "TextItem"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TextItemResponse"
},"BookmarksResponse": {
  "properties" : {
    "Bookmarks" : {
      "$ref" : "Bookmarks"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "BookmarksResponse"
},"PageBorderDistanceFrom": {
  "id" : "PageBorderDistanceFrom"
},"Signature": {
  "properties" : {
    "SignaturePath" : {
      "type" : "string"
    },
    "SignatureType" : {
      "type" : "string"
    },
    "Password" : {
      "type" : "string"
    },
    "Contact" : {
      "type" : "string"
    },
    "Location" : {
      "type" : "string"
    },
    "Visible" : {
      "type" : "boolean"
    },
    "Rectangle" : {
      "$ref" : "Rectangle"
    },
    "FormFieldName" : {
      "type" : "string"
    },
    "Authority" : {
      "type" : "string"
    },
    "Date" : {
      "type" : "string"
    }
  },
  "id" : "Signature"
},"LineNumberRestartMode": {
  "id" : "LineNumberRestartMode"
},"TextReplaceListRequest": {
  "properties" : {
    "TextReplaces" : {
      "type" : "array",
      "items" : {
        "$ref" : "TextReplace"
      }
    }
  },
  "id" : "TextReplaceListRequest"
},"PageTextReplaceResponse": {
  "properties" : {
    "Page" : {
      "$ref" : "Page"
    },
    "Matches" : {
      "$ref" : "int"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "PageTextReplaceResponse"
},"ReportType": {
  "id" : "ReportType"
},"Stamp": {
  "properties" : {
    "Type" : {
      "$ref" : "StampType"
    },
    "Background" : {
      "type" : "boolean"
    },
    "BottomMargin" : {
      "$ref" : "double"
    },
    "HorizontalAlignment" : {
      "$ref" : "HorizontalAlignment"
    },
    "LeftMargin" : {
      "$ref" : "double"
    },
    "Opacity" : {
      "$ref" : "double"
    },
    "RightMargin" : {
      "$ref" : "double"
    },
    "Rotate" : {
      "$ref" : "Rotation"
    },
    "RotateAngle" : {
      "$ref" : "double"
    },
    "TopMargin" : {
      "$ref" : "double"
    },
    "VerticalAlignment" : {
      "$ref" : "VerticalAlignment"
    },
    "XIndent" : {
      "$ref" : "double"
    },
    "YIndent" : {
      "$ref" : "double"
    },
    "Zoom" : {
      "$ref" : "double"
    },
    "TextAlignment" : {
      "$ref" : "HorizontalAlignment"
    },
    "Value" : {
      "type" : "string"
    },
    "TextState" : {
      "$ref" : "TextState"
    },
    "FileName" : {
      "type" : "string"
    },
    "Width" : {
      "$ref" : "double"
    },
    "Height" : {
      "$ref" : "double"
    },
    "PageIndex" : {
      "$ref" : "int"
    },
    "StartingNumber" : {
      "$ref" : "int"
    }
  },
  "id" : "Stamp"
},"ImageResponse": {
  "properties" : {
    "Image" : {
      "$ref" : "Image"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ImageResponse"
},"SplitResult": {
  "properties" : {
    "Documents" : {
      "type" : "array",
      "items" : {
        "$ref" : "SplitResultDocument"
      }
    }
  },
  "id" : "SplitResult"
},"TextItemsResponse": {
  "properties" : {
    "TextItems" : {
      "$ref" : "TextItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TextItemsResponse"
},"Bookmarks": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Bookmarks"
},"Underline": {
  "id" : "Underline"
},"Image": {
  "properties" : {
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Image"
},"Annotations": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Annotations"
},"Document": {
  "properties" : {
    "DocumentProperties" : {
      "$ref" : "DocumentProperties"
    },
    "Pages" : {
      "$ref" : "Pages"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Document"
},"Orientation": {
  "id" : "Orientation"
},"Fields": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "Field"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Fields"
},"FieldType": {
  "id" : "FieldType"
},"TextState": {
  "properties" : {
    "FontSize" : {
      "$ref" : "float"
    },
    "Font" : {
      "type" : "string"
    },
    "ForegroundColor" : {
      "$ref" : "Color"
    },
    "BackgroundColor" : {
      "$ref" : "Color"
    },
    "FontStyle" : {
      "$ref" : "FontStyles"
    }
  },
  "id" : "TextState"
},"TiffExportOptions": {
  "properties" : {
    "Brightness" : {
      "$ref" : "float"
    },
    "Compression" : {
      "type" : "string"
    },
    "ColorDepth" : {
      "type" : "string"
    },
    "LeftMargin" : {
      "$ref" : "int"
    },
    "RightMargin" : {
      "$ref" : "int"
    },
    "TopMargin" : {
      "$ref" : "int"
    },
    "BottomMargin" : {
      "$ref" : "int"
    },
    "Orientation" : {
      "type" : "string"
    },
    "SkipBlankPages" : {
      "type" : "boolean"
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "XResolution" : {
      "$ref" : "int"
    },
    "YResolution" : {
      "$ref" : "int"
    },
    "PageIndex" : {
      "$ref" : "int"
    },
    "PageCount" : {
      "$ref" : "int"
    },
    "ResultFile" : {
      "type" : "string"
    }
  },
  "id" : "TiffExportOptions"
},"PageVerticalAlignment": {
  "id" : "PageVerticalAlignment"
},"LinkHighlightingMode": {
  "id" : "LinkHighlightingMode"
},"Attachments": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Attachments"
},"StyleIdentifier": {
  "id" : "StyleIdentifier"
},"DocumentProperty": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Value" : {
      "type" : "string"
    },
    "BuiltIn" : {
      "type" : "boolean"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "DocumentProperty"
},"Link": {
  "properties" : {
    "Href" : {
      "type" : "string"
    },
    "Rel" : {
      "type" : "string"
    },
    "Type" : {
      "type" : "string"
    },
    "Title" : {
      "type" : "string"
    }
  },
  "id" : "Link"
},"StampType": {
  "id" : "StampType"
},"Annotation": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "Contents" : {
      "type" : "string"
    },
    "CreationDate" : {
      "type" : "string"
    },
    "Subject" : {
      "type" : "string"
    },
    "Title" : {
      "type" : "string"
    },
    "Modified" : {
      "type" : "string"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "Annotation"
},"FieldsResponse": {
  "properties" : {
    "Fields" : {
      "$ref" : "Fields"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "FieldsResponse"
},"Rectangle": {
  "properties" : {
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    }
  },
  "id" : "Rectangle"
},"SaaSposeResponse": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SaaSposeResponse"
}
}