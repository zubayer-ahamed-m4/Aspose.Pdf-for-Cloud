require 'aspose_storage_cloud'

# Common files
require_relative 'aspose_pdf_cloud/api_client'
require_relative 'aspose_pdf_cloud/api_error'
require_relative 'aspose_pdf_cloud/version'
require_relative 'aspose_pdf_cloud/configuration'

# Models
require_relative 'aspose_pdf_cloud/models/base_object'
require_relative 'aspose_pdf_cloud/models/document_pages_response'
require_relative 'aspose_pdf_cloud/models/pages'
require_relative 'aspose_pdf_cloud/models/page'
require_relative 'aspose_pdf_cloud/models/images'
require_relative 'aspose_pdf_cloud/models/rectangle'
require_relative 'aspose_pdf_cloud/models/image'
require_relative 'aspose_pdf_cloud/models/word_count_response'
require_relative 'aspose_pdf_cloud/models/word_count'
require_relative 'aspose_pdf_cloud/models/page_word_count'
require_relative 'aspose_pdf_cloud/models/signature'
require_relative 'aspose_pdf_cloud/models/stamp'
require_relative 'aspose_pdf_cloud/models/text_state'
require_relative 'aspose_pdf_cloud/models/color'
require_relative 'aspose_pdf_cloud/models/attachments_response'
require_relative 'aspose_pdf_cloud/models/attachments'
require_relative 'aspose_pdf_cloud/models/link_element'
require_relative 'aspose_pdf_cloud/models/attachment_response'
require_relative 'aspose_pdf_cloud/models/attachment'
require_relative 'aspose_pdf_cloud/models/fields_response'
require_relative 'aspose_pdf_cloud/models/fields'
require_relative 'aspose_pdf_cloud/models/field'
require_relative 'aspose_pdf_cloud/models/field_response'
require_relative 'aspose_pdf_cloud/models/bookmarks_response'
require_relative 'aspose_pdf_cloud/models/bookmarks'
require_relative 'aspose_pdf_cloud/models/annotations_response'
require_relative 'aspose_pdf_cloud/models/annotations'
require_relative 'aspose_pdf_cloud/models/annotation_response'
require_relative 'aspose_pdf_cloud/models/annotation'
require_relative 'aspose_pdf_cloud/models/document_response'
require_relative 'aspose_pdf_cloud/models/document'
require_relative 'aspose_pdf_cloud/models/document_properties'
require_relative 'aspose_pdf_cloud/models/document_property'
require_relative 'aspose_pdf_cloud/models/split_result_response'
require_relative 'aspose_pdf_cloud/models/split_result'
require_relative 'aspose_pdf_cloud/models/split_result_document'
require_relative 'aspose_pdf_cloud/models/link_annotations_response'
require_relative 'aspose_pdf_cloud/models/link_annotations'
require_relative 'aspose_pdf_cloud/models/link_annotation_response'
require_relative 'aspose_pdf_cloud/models/link_annotation'
require_relative 'aspose_pdf_cloud/models/images_response'
require_relative 'aspose_pdf_cloud/models/image_response'
require_relative 'aspose_pdf_cloud/models/append_document'
require_relative 'aspose_pdf_cloud/models/merge_documents'
require_relative 'aspose_pdf_cloud/models/text_replace'
require_relative 'aspose_pdf_cloud/models/document_text_replace_response'
require_relative 'aspose_pdf_cloud/models/page_text_replace_response'
require_relative 'aspose_pdf_cloud/models/text_replace_list_request'
require_relative 'aspose_pdf_cloud/models/tiff_export_options'
require_relative 'aspose_pdf_cloud/models/document_properties_response'
require_relative 'aspose_pdf_cloud/models/document_property_response'
require_relative 'aspose_pdf_cloud/models/text_items_response'
require_relative 'aspose_pdf_cloud/models/text_items'
require_relative 'aspose_pdf_cloud/models/text_item'
require_relative 'aspose_pdf_cloud/models/text_format'
require_relative 'aspose_pdf_cloud/models/text_format_response'
require_relative 'aspose_pdf_cloud/models/text_item_response'
require_relative 'aspose_pdf_cloud/models/link'
require_relative 'aspose_pdf_cloud/models/base_response'
require_relative 'aspose_pdf_cloud/models/barcode_response_list'
require_relative 'aspose_pdf_cloud/models/page_response'

# APIs
require_relative 'aspose_pdf_cloud/api/pdf_api'

module AsposePDFCloud
  class << self
    # Configure sdk using block.
    # AsposePDFCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
