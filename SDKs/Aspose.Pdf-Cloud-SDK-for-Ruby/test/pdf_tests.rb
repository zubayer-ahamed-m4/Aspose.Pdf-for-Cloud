require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_pdf_cloud'

class PDFTests < Minitest::Test
	include MiniTest::Assertions
	include AsposePDFCloud
	include AsposeStorageCloud
	
	def setup
        #Get App key and App SID from https://cloud.aspose.com
        AsposeApp.app_key_and_sid("", "")
		@pdf_api = PdfApi.new
	end

	def teardown
	end

	def upload_file(file_name)
        @storage_api = StorageApi.new
		response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
		assert(response, message="Failed to upload {file_name} file.")
	end

	def test_put_convert_document
        file_name = "Sample.pdf"

        response = @pdf_api.put_convert_document(File.open("../../../data/" << file_name,"r") { |io| io.read }, {format: "tiff"})
	 	assert(response, message="Failed to convert document from request content to format specified")
	end

	def test_get_document_with_format
        file_name = "Sample.pdf"
        upload_file(file_name)

        format = "doc"
        response = @pdf_api.get_document_with_format(file_name, format)
	 	assert(response, message="Failed to convert document to specified format")
	end	
    
    def test_put_create_document
        file_name = "newPDFFile.pdf"
        response = @pdf_api.put_create_document(file_name)
	 	assert(response, message="Failed to create new document")
	end

	def test_put_document_save_as_tiff
        file_name = "Sample.pdf"
        upload_file(file_name)
        result_file = "sample.tiff"
        upload_file(result_file)

        tiff_export_options = TiffExportOptions.new
        tiff_export_options.result_file = result_file;

        response = @pdf_api.put_document_save_as_tiff(file_name, tiff_export_options)
	 	assert(response, message="Failed to save document as Tiff image")
	end

	def test_post_append_document
        file_name = "Sample.pdf"
        upload_file(file_name)
        append_file_name = "sample-input.pdf"
        upload_file(append_file_name)

        append_document = AppendDocument.new
    	append_document.document = append_file_name;
    	append_document.start_page = 2
    	append_document.end_page = 3

        response = @pdf_api.post_append_document(file_name, append_document)
	 	assert(response, message="Failed to append document to existing one.")
	end

	def test_get_document_attachments
        file_name = "SampleAttachment.pdf"
        upload_file(file_name)

        response = @pdf_api.get_document_attachments(file_name)
	 	assert(response, message="Failed to read document attachments info.")
	end

	def test_get_document_attachment_by_index
        file_name = "SampleAttachment.pdf"
        upload_file(file_name)

        attachment_index = 1
        response = @pdf_api.get_document_attachment_by_index(file_name, attachment_index)
	 	assert(response, message="Failed to read document attachment info by its index")
	end

	def test_get_download_document_attachment_by_index
        file_name = "SampleAttachment.pdf"
        upload_file(file_name)
		
		attachment_index = 1        
        response = @pdf_api.get_download_document_attachment_by_index(file_name, attachment_index)
	 	assert(response, message="Failed to download document attachment content by its index")
	end

	def test_get_document_bookmarks
        file_name = "Sample-Bookmark.pdf"
        upload_file(file_name)

        response = @pdf_api.get_document_bookmarks(file_name)
	 	assert(response, message="Failed to read document bookmarks")
	end

	def test_get_document_bookmarks_children
        file_name = "Sample-Bookmark.pdf"
        upload_file(file_name)

        bookmark_path = "1"
        response = @pdf_api.get_document_bookmarks_children(file_name, bookmark_path)
	 	assert(response, message="Failed to read document bookmark/bookmarks (including children).")
	end

	def test_get_document_properties
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        response = @pdf_api.get_document_properties(file_name)
	 	assert(response, message="Failed to read document properties")
	end

	def test_delete_properties
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        response = @pdf_api.delete_properties(file_name)
	 	assert(response, message="Failed to delete document properties.")
	end

	def test_get_document_property
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        property_name = "author"
        response = @pdf_api.get_document_property(file_name, property_name)
	 	assert(response, message="Failed to read document property by name.")
	end

	def test_put_set_property
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        property_name = "AsposeDev"
        document_property = DocumentProperty.new
    	document_property.name = property_name
    	document_property.value = "Elon"
    	document_property.built_in = false

        response = @pdf_api.put_set_property(file_name, property_name, document_property)
	 	assert(response, message="Failed to add/update document property.")
	end

	def test_delete_property
        file_name = "Sample-Annotation-Property.pdf"
        upload_file(file_name)

        property_name = "AsposeDev"
        response = @pdf_api.delete_property(file_name, property_name)
	 	assert(response, message="Failed to delete document property.")
	end

	def test_get_fields
        file_name = "sample-field.pdf"
        upload_file(file_name)

        response = @pdf_api.get_fields(file_name)
	 	assert(response, message="Failed to get document fields.")
	end

	def test_put_update_fields
        file_name = "sample-field.pdf"
        upload_file(file_name)

        field = Field.new
    	field.name = "textbox1";
    	field.values = ["Aspose"]
    
    	fields = Fields.new
    	fields.list = [field]

        response = @pdf_api.put_update_fields(file_name, fields)
	 	assert(response, message="Failed to update fields.")
	end

	def test_post_create_field
        file_name = "sample-field.pdf"
        upload_file(file_name)

        field = Field.new
    	field.name = "checkBoxField2"
    	field.values = ["1"]
    	field.type = "Boolean"
    
    	rect = Rectangle.new
    	rect.x = 100
    	rect.y = 100
    	rect.height = 100
    	rect.width = 200
    
    	field.rect = rect

    	page = 1
        response = @pdf_api.post_create_field(file_name, page, field)
	 	assert(response, message="Failed to create field.")
	end

	def test_get_field
        file_name = "sample-field.pdf"
        upload_file(file_name)

        field_name = "textbox1"
        response = @pdf_api.get_field(file_name, field_name)
	 	assert(response, message="Failed to get document field by name.")
	end

	def test_put_update_field
        file_name = "sample-field.pdf"
        upload_file(file_name)

        field_name = "textbox1"
    
    	field = Field.new
    	field.name = field_name
    	field.values = ["Aspose"]

        response = @pdf_api.put_update_field(file_name, field, field_name)
	 	assert(response, message="Failed to update field.")
	end

	def test_put_merge_documents
        upload_file("Sample.pdf")
        upload_file("sample-input.pdf")

        merge_documents = MergeDocuments.new
    	merge_documents.list = ["Sample.pdf", "sample-input.pdf"]

        response = @pdf_api.put_merge_documents("sample-merged.pdf", merge_documents)
	 	assert(response, message="Failed to merge a list of documents")
	end

	def test_get_pages
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        response = @pdf_api.get_pages(file_name)
	 	assert(response, message="Failed to read document pages info")
	end

	def test_put_add_new_page
        file_name = "sample-input.pdf"
        upload_file(file_name)

        response = @pdf_api.put_add_new_page(file_name)
	 	assert(response, message="Failed to add new page to end of the document")
	end

	def test_get_words_per_page
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        response = @pdf_api.get_words_per_page(file_name)
	 	assert(response, message="Failed to get number of words per document page.")
	end

	def test_get_page_with_format
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        page_number = 1
        format = "png"
        response = @pdf_api.get_page_with_format(file_name, page_number, format)
	 	assert(response, message="Failed to get page in specified format.")
	end

	def test_delete_page
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.delete_page(file_name, page_number)
	 	assert(response, message="Failed to delete document page by its number.")
	end

	def test_get_page_annotations
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.get_page_annotations(file_name, page_number)
	 	assert(response, message="Failed to read document page annotations.")
	end

	def test_get_page_annotation
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        page_number = 1
        annotation_number = 1
        response = @pdf_api.get_page_annotation(file_name, page_number, annotation_number)
	 	assert(response, message="Failed to read document page annotation by its number.")
	end

	def test_get_fragments
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.get_fragments(file_name, page_number)
	 	assert(response, message="Failed to read page fragments.")
	end

	def test_get_fragment
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        fragment_number = 1 
        response = @pdf_api.get_fragment(file_name, page_number, fragment_number)
	 	assert(response, message="Failed to read page fragment.")
	end

	def test_get_segments
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1 
        fragment_number = 1
        response = @pdf_api.get_segments(file_name, page_number, fragment_number)
	 	assert(response, message="Failed to read fragment segments.")
	end

	def test_get_segment
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1 
        fragment_number = 1 
        segment_number = 1
        response = @pdf_api.get_segment(file_name, page_number, fragment_number, segment_number)
	 	assert(response, message="Failed to read segment.")
	end

	def test_get_segment_text_format
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        fragment_number = 1 
        segment_number = 1
        response = @pdf_api.get_segment_text_format(file_name, page_number, fragment_number, segment_number)
	 	assert(response, message="Failed to read segment text format.")
	end

	def test_get_fragment_text_format
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        fragment_number = 1
        response = @pdf_api.get_fragment_text_format(file_name, page_number, fragment_number)
	 	assert(response, message="Failed to read page fragment text format.")
	end

	def test_get_images
        file_name = "SampleImage.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.get_images(file_name, page_number)
	 	assert(response, message="Failed to read document images.")
	end

	def test_get_image_with_format
        file_name = "SampleImage.pdf"
        upload_file(file_name)

        page_number = 1
        image_number = 1
        format = "jpeg"
        response = @pdf_api.get_image_with_format(file_name, page_number, image_number, format)
	 	assert(response, message="Failed to get image in specified format.")
	end

	def test_post_replace_image
        file_name = "SampleImage.pdf"
        upload_file(file_name)
        image_file_name = "aspose-cloud.png"
        upload_file(image_file_name)

        page_number = 1 
        image_number = 1
        response = @pdf_api.post_replace_image(file_name, page_number, image_number, {image_file: image_file_name})
	 	assert(response, message="Failed to replace document image.")
	end

	def test_get_extract_barcodes
        file_name = "SampleBarCodeImage.pdf"
        upload_file(file_name)

        page_number = 1
        image_number = 1
        response = @pdf_api.get_extract_barcodes(file_name, page_number, image_number)
	 	assert(response, message="Failed to recognize barcodes.")
	end

	def test_get_page_link_annotations
        file_name = "Sample-Bookmark.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.get_page_link_annotations(file_name, page_number)
	 	assert(response, message="Failed to read document page link annotations.")
	end

	def test_get_page_link_annotation_by_index
        file_name = "Sample-Bookmark.pdf"
        upload_file(file_name)

        page_number = 1
        link_index = 1
        response = @pdf_api.get_page_link_annotation_by_index(file_name, page_number, link_index)
	 	assert(response, message="Failed to read document page link annotation by its index.")
	end

	def test_post_move_page
        file_name = "sample-merged.pdf"
        upload_file(file_name)

        page_number = 1
        new_index = 1
        response = @pdf_api.post_move_page(file_name, page_number, new_index)
	 	assert(response, message="Failed to move page to new position.")
	end

	def test_post_page_replace_text
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        text_replace = TextReplace.new
    	text_replace.old_value = "Sample PDF"
    	text_replace.new_value = "Sample Aspose PDF"
        response = @pdf_api.post_page_replace_text(file_name, page_number, text_replace)
	 	assert(response, message="Failed to replace text")
	end

	def test_post_page_replace_text_list
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        text_replace_list_request = TextReplaceListRequest.new 
    	text_request_1 = TextReplace.new
    	text_request_1.old_value = "Sample"
    	text_request_1.new_value = "Sample Aspose"
    	text_request_2 = TextReplace.new
    	text_request_2.old_value = "PDF"
    	text_request_2.new_value = "PDF Document"
    	text_replace_list_request.text_replaces = [text_request_1, text_request_2]

        response = @pdf_api.post_page_replace_text_list(file_name, page_number, text_replace_list_request)
	 	assert(response, message="Failed to replace text")
	end

	def test_post_sign_page
        file_name = "sample-input.pdf"
        upload_file(file_name)

        signature_file_name = "pkc7-sample.pfx"
    	upload_file(signature_file_name)
    	
    	page_number = 1
    	signature = Signature.new
    	signature.authority = "Alexey"
    	signature.location = "London"
    	signature.contact = "alexey@aspose.com"
    	signature.date = "10/25/2015 2:46:00.000 PM"
    	signature.form_field_name = "Signature1"
    	signature.password = "aspose"
    	rectangle = Rectangle.new
    	rectangle.x = 100
    	rectangle.y = 100
    	rectangle.height = 100
    	rectangle.width = 200
    	signature.rectangle = rectangle
    	signature.signature_path = signature_file_name
    	signature.signature_type = "PKCS7"
    	signature.visible = true

        response = @pdf_api.post_sign_page(file_name, page_number, signature)
	 	assert(response, message="Failed to sign page.")
	end

	def test_put_page_add_stamp
        file_name = "sample-input.pdf"
        upload_file(file_name)

        page_number = 1
        stamp = Stamp.new
    	stamp.value = "Aspose"
    	stamp.background = true
    	stamp.type = "Text"

        response = @pdf_api.put_page_add_stamp(file_name, page_number, stamp)
	 	assert(response, message="Failed to add page stamp.")
	end

	def test_get_page_text_items
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        page_number = 1
        response = @pdf_api.get_page_text_items(file_name, page_number)
	 	assert(response, message="Failed to read page text items.")
	end

	def test_post_document_replace_text
        file_name = "sample-input.pdf"
        upload_file(file_name)

        text_replace = TextReplace.new
    	text_replace.old_value = "Sample PDF"
    	text_replace.new_value = "Sample Aspose PDF"

        response = @pdf_api.post_document_replace_text(file_name, text_replace)
	 	assert(response, message="Failed to replace document's text.")
	end

	def test_post_document_replace_text_list
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        text_replace_list_request = TextReplaceListRequest.new
	    text_replace_1 = TextReplace.new
	    text_replace_1.old_value = "Sample"
	    text_replace_1.new_value = "Sample Aspose"
	    text_replace_1.regex = false
	    text_replace_2 = TextReplace.new
	    text_replace_2.old_value = "PDF"
	    text_replace_2.new_value = "PDF Document"
	    text_replace_2.regex = false
	    text_replace_list_request.text_replaces = [text_replace_1, text_replace_2]

        response = @pdf_api.post_document_replace_text_list(file_name, text_replace_list_request)
	 	assert(response, message="Failed to replace document's text")
	end

	def test_post_sign_document
        file_name = "sample-input-2.pdf"
        upload_file(file_name)
        signature_file_name = "pkc7-sample.pfx"
    	upload_file(signature_file_name)

    	signature = Signature.new
    	signature.authority = "Alexey"
    	signature.location = "London"
    	signature.contact = "alexey@aspose.com"
    	signature.date = "10/25/2015 2:46:00.000 PM"
    	signature.form_field_name = "Signature1"
    	signature.password = "aspose"
    	rectangle = Rectangle.new
    	rectangle.x = 100
    	rectangle.y = 100
    	rectangle.height = 100
    	rectangle.width = 200
    	signature.rectangle = rectangle
    	signature.signature_path = signature_file_name
    	signature.signature_type = "PKCS7"
    	signature.visible = true

        response = @pdf_api.post_sign_document(file_name, signature)
	 	assert(response, message="Failed to sign document.")
	end

	def test_post_split_document
        file_name = "sample-input.pdf"
        upload_file(file_name)

        response = @pdf_api.post_split_document(file_name, {format: "pdf", from: 1, to: 2})
	 	assert(response, message="Failed to split document to parts.")
	end

	def test_get_text_items
        file_name = "Sample-Annotation.pdf"
        upload_file(file_name)

        response = @pdf_api.get_text_items(file_name)
	 	assert(response, message="Failed to read document text items.")
	end
    
    def test_get_page
        file_name = "sample-input.pdf"
        upload_file(file_name)
        
        page_number = 1
        response = @pdf_api.get_page(file_name, page_number)
        assert(response, message="Failed to read document page info.")
    end

	def test_get_document
        file_name = "Sample.pdf"
        upload_file(file_name)
        
        response = @pdf_api.get_document(file_name)
        assert(response, message="Failed to read common document info.")
    end

    def test_get_image
        file_name = "SampleImage.pdf"
        upload_file(file_name)
        
        page_number = 1
        image_number = 1
        response = @pdf_api.get_image(file_name, page_number, image_number)
        assert(response, message="Failed to read document image by number.")
    end    

end