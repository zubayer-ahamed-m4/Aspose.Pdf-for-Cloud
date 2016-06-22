require "uri"

module AsposePDFCloud
  class PdfApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Convert document from request content to format specified.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :replace_resources_host_to 
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def put_convert_document(file, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_convert_document ..."
      end
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling put_convert_document" if file.nil?
      
      # resource path
      path = "/pdf/convert".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'replaceResourcesHostTo'] = opts[:'replace_resources_host_to'] if opts[:'replace_resources_host_to']
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_convert_document. Result: #{result.inspect}"
      end
      return result
    end

    # Convert document to specified format
    # 
    # @param name The document name.
    # @param format Convert document to this format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :out_path 
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_document_with_format(name, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_with_format" if name.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_document_with_format" if format.nil?
      
      # resource path
      path = "/pdf/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'outPath'] = opts[:'out_path'] if opts[:'out_path']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Create new document.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file server path if defined.
    # @option opts [String] :data_file The data file path (for xml template only).
    # @option opts [String] :template_type The template type, can be xml or html.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @return [DocumentResponse]
    def put_create_document(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_create_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_create_document" if name.nil?
      
      # resource path
      path = "/pdf/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'templateFile'] = opts[:'template_file'] if opts[:'template_file']
      query_params[:'dataFile'] = opts[:'data_file'] if opts[:'data_file']
      query_params[:'templateType'] = opts[:'template_type'] if opts[:'template_type']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_create_document. Result: #{result.inspect}"
      end
      return result
    end

    # Save document as Tiff image.
    # 
    # @param name The document name.
    # @param export_options {TiffExportOptions} with tiff export options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :result_file The resulting file.
    # @option opts [Float] :brightness The image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def put_document_save_as_tiff(name, export_options, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_document_save_as_tiff ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_document_save_as_tiff" if name.nil?
      
      # verify the required parameter 'export_options' is set
      fail "Missing the required parameter 'export_options' when calling put_document_save_as_tiff" if export_options.nil?
      
      # resource path
      path = "/pdf/{name}/SaveAs/tiff".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'resultFile'] = opts[:'result_file'] if opts[:'result_file']
      query_params[:'brightness'] = opts[:'brightness'] if opts[:'brightness']
      query_params[:'compression'] = opts[:'compression'] if opts[:'compression']
      query_params[:'colorDepth'] = opts[:'color_depth'] if opts[:'color_depth']
      query_params[:'leftMargin'] = opts[:'left_margin'] if opts[:'left_margin']
      query_params[:'rightMargin'] = opts[:'right_margin'] if opts[:'right_margin']
      query_params[:'topMargin'] = opts[:'top_margin'] if opts[:'top_margin']
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if opts[:'bottom_margin']
      query_params[:'orientation'] = opts[:'orientation'] if opts[:'orientation']
      query_params[:'skipBlankPages'] = opts[:'skip_blank_pages'] if opts[:'skip_blank_pages']
      query_params[:'width'] = opts[:'width'] if opts[:'width']
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'xResolution'] = opts[:'x_resolution'] if opts[:'x_resolution']
      query_params[:'yResolution'] = opts[:'y_resolution'] if opts[:'y_resolution']
      query_params[:'pageIndex'] = opts[:'page_index'] if opts[:'page_index']
      query_params[:'pageCount'] = opts[:'page_count'] if opts[:'page_count']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(export_options)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_document_save_as_tiff. Result: #{result.inspect}"
      end
      return result
    end

    # Append document to existing one.
    # 
    # @param name The original document name.
    # @param append_document {AppendDocument} with the append document data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :append_file Append file server path.
    # @option opts [Integer] :start_page Appending start page.
    # @option opts [Integer] :end_page Appending end page.
    # @option opts [String] :storage The documents storage.
    # @option opts [String] :folder The original document folder.
    # @return [DocumentResponse]
    def post_append_document(name, append_document, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_append_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_append_document" if name.nil?
      
      # verify the required parameter 'append_document' is set
      fail "Missing the required parameter 'append_document' when calling post_append_document" if append_document.nil?
      
      # resource path
      path = "/pdf/{name}/appendDocument".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'appendFile'] = opts[:'append_file'] if opts[:'append_file']
      query_params[:'startPage'] = opts[:'start_page'] if opts[:'start_page']
      query_params[:'endPage'] = opts[:'end_page'] if opts[:'end_page']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(append_document)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_append_document. Result: #{result.inspect}"
      end
      return result
    end

    # Read document attachments info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AttachmentsResponse]
    def get_document_attachments(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_attachments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_attachments" if name.nil?
      
      # resource path
      path = "/pdf/{name}/attachments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_attachments. Result: #{result.inspect}"
      end
      return result
    end

    # Read document attachment info by its index.
    # 
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AttachmentResponse]
    def get_document_attachment_by_index(name, attachment_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_attachment_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_attachment_by_index" if name.nil?
      
      # verify the required parameter 'attachment_index' is set
      fail "Missing the required parameter 'attachment_index' when calling get_document_attachment_by_index" if attachment_index.nil?
      
      # resource path
      path = "/pdf/{name}/attachments/{attachmentIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'attachmentIndex' + '}', attachment_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_attachment_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Download document attachment content by its index.
    #
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_download_document_attachment_by_index(name, attachment_index, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: PdfApi#get_download_document_attachment_by_index ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_download_document_attachment_by_index" if name.nil?
        
        # verify the required parameter 'attachment_index' is set
        fail "Missing the required parameter 'attachment_index' when calling get_download_document_attachment_by_index" if attachment_index.nil?
        
        # resource path
        path = "/pdf/{name}/attachments/{attachmentIndex}/download".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'attachmentIndex' + '}', attachment_index.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['multipart/form-data']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'File')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: PdfApi#get_download_document_attachment_by_index. Result: #{result.inspect}"
                                      end
                                      return result
    end

    # Read document bookmarks.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BookmarksResponse]
    def get_document_bookmarks(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_bookmarks ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_bookmarks" if name.nil?
      
      # resource path
      path = "/pdf/{name}/bookmarks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BookmarksResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_bookmarks. Result: #{result.inspect}"
      end
      return result
    end

    # Read document bookmark/bookmarks (including children).
    # 
    # @param name The document name.
    # @param bookmark_path The bookmark path.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def get_document_bookmarks_children(name, bookmark_path, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_bookmarks_children ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_bookmarks_children" if name.nil?
      
      # verify the required parameter 'bookmark_path' is set
      fail "Missing the required parameter 'bookmark_path' when calling get_document_bookmarks_children" if bookmark_path.nil?
      
      # resource path
      path = "/pdf/{name}/bookmarks/{bookmarkPath}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'bookmarkPath' + '}', bookmark_path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_bookmarks_children. Result: #{result.inspect}"
      end
      return result
    end

    # Read document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertiesResponse]
    def get_document_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_properties" if name.nil?
      
      # resource path
      path = "/pdf/{name}/documentproperties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertiesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Delete document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [BaseResponse]
    def delete_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#delete_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_properties" if name.nil?
      
      # resource path
      path = "/pdf/{name}/documentproperties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#delete_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Read document property by name.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertyResponse]
    def get_document_property(name, property_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling get_document_property" if property_name.nil?
      
      # resource path
      path = "/pdf/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Add/update document property.
    # 
    # @param name 
    # @param property_name 
    # @param property 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertyResponse]
    def put_set_property(name, property_name, property, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_set_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_set_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling put_set_property" if property_name.nil?
      
      # verify the required parameter 'property' is set
      fail "Missing the required parameter 'property' when calling put_set_property" if property.nil?
      
      # resource path
      path = "/pdf/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(property)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_set_property. Result: #{result.inspect}"
      end
      return result
    end

    # Delete document property.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [BaseResponse]
    def delete_property(name, property_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#delete_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling delete_property" if property_name.nil?
      
      # resource path
      path = "/pdf/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#delete_property. Result: #{result.inspect}"
      end
      return result
    end

    # Get document fields.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldsResponse]
    def get_fields(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_fields ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_fields" if name.nil?
      
      # resource path
      path = "/pdf/{name}/fields".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_fields. Result: #{result.inspect}"
      end
      return result
    end

    # Update fields.
    # 
    # @param name The document name.
    # @param fields {Fields} with the fields data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldsResponse]
    def put_update_fields(name, fields, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_update_fields ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_update_fields" if name.nil?
      
      # verify the required parameter 'fields' is set
      fail "Missing the required parameter 'fields' when calling put_update_fields" if fields.nil?
      
      # resource path
      path = "/pdf/{name}/fields".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(fields)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_update_fields. Result: #{result.inspect}"
      end
      return result
    end

    # Create field.
    # 
    # @param name The document name.
    # @param page Document page number.
    # @param field {Field} with the field data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_create_field(name, page, field, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_create_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_create_field" if name.nil?
      
      # verify the required parameter 'page' is set
      fail "Missing the required parameter 'page' when calling post_create_field" if page.nil?
      
      # verify the required parameter 'field' is set
      fail "Missing the required parameter 'field' when calling post_create_field" if field.nil?
      
      # resource path
      path = "/pdf/{name}/fields".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = page
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(field)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_create_field. Result: #{result.inspect}"
      end
      return result
    end

    # Get document field by name.
    # 
    # @param name The document name.
    # @param field_name The field name/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldResponse]
    def get_field(name, field_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_field" if name.nil?
      
      # verify the required parameter 'field_name' is set
      fail "Missing the required parameter 'field_name' when calling get_field" if field_name.nil?
      
      # resource path
      path = "/pdf/{name}/fields/{fieldName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'fieldName' + '}', field_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_field. Result: #{result.inspect}"
      end
      return result
    end

    # Update field.
    # 
    # @param name The document name.
    # @param field {Field} with the field data.
    # @param field_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldResponse]
    def put_update_field(name, field, field_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_update_field ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_update_field" if name.nil?
      
      # verify the required parameter 'field' is set
      fail "Missing the required parameter 'field' when calling put_update_field" if field.nil?
      
      # verify the required parameter 'field_name' is set
      fail "Missing the required parameter 'field_name' when calling put_update_field" if field_name.nil?
      
      # resource path
      path = "/pdf/{name}/fields/{fieldName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'fieldName' + '}', field_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(field)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_update_field. Result: #{result.inspect}"
      end
      return result
    end

    # Merge a list of documents.
    # 
    # @param name Resulting documen name.
    # @param merge_documents {MergeDocuments} with a list of documents.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Resulting document storage.
    # @option opts [String] :folder Resulting document folder.
    # @return [DocumentResponse]
    def put_merge_documents(name, merge_documents, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_merge_documents ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_merge_documents" if name.nil?
      
      # verify the required parameter 'merge_documents' is set
      fail "Missing the required parameter 'merge_documents' when calling put_merge_documents" if merge_documents.nil?
      
      # resource path
      path = "/pdf/{name}/merge".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(merge_documents)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_merge_documents. Result: #{result.inspect}"
      end
      return result
    end

    # Read document pages info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPagesResponse]
    def get_pages(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_pages ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_pages" if name.nil?
      
      # resource path
      path = "/pdf/{name}/pages".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPagesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_pages. Result: #{result.inspect}"
      end
      return result
    end

    # Add new page to end of the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPagesResponse]
    def put_add_new_page(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_add_new_page ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_add_new_page" if name.nil?
      
      # resource path
      path = "/pdf/{name}/pages".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPagesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_add_new_page. Result: #{result.inspect}"
      end
      return result
    end

    # Get number of words per document page.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WordCountResponse]
    def get_words_per_page(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_words_per_page ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_words_per_page" if name.nil?
      
      # resource path
      path = "/pdf/{name}/pages/wordCount".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WordCountResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_words_per_page. Result: #{result.inspect}"
      end
      return result
    end

    # Get page in specified format.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param format The page format.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The page width.
    # @option opts [Integer] :height The page height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_with_format(name, page_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_with_format" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_with_format" if page_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_page_with_format" if format.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'width'] = opts[:'width'] if opts[:'width']
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Delete document page by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_page(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#delete_page ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_page" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling delete_page" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#delete_page. Result: #{result.inspect}"
      end
      return result
    end

    # Read documant page annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AnnotationsResponse]
    def get_page_annotations(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_annotations ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_annotations" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_annotations" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/annotations".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AnnotationsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_annotations. Result: #{result.inspect}"
      end
      return result
    end

    # Read document page annotation by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param annotation_number The annotation number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AnnotationResponse]
    def get_page_annotation(name, page_number, annotation_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_annotation ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_annotation" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_annotation" if page_number.nil?
      
      # verify the required parameter 'annotation_number' is set
      fail "Missing the required parameter 'annotation_number' when calling get_page_annotation" if annotation_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'annotationNumber' + '}', annotation_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AnnotationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_annotation. Result: #{result.inspect}"
      end
      return result
    end

    # Read page fragments.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_fragments(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_fragments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_fragments" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_fragments" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if opts[:'with_empty']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_fragments. Result: #{result.inspect}"
      end
      return result
    end

    # Read page fragment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_fragment(name, page_number, fragment_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_fragment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_fragment" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_fragment" if page_number.nil?
      
      # verify the required parameter 'fragment_number' is set
      fail "Missing the required parameter 'fragment_number' when calling get_fragment" if fragment_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if opts[:'with_empty']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_fragment. Result: #{result.inspect}"
      end
      return result
    end

    # Read fragment segments.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_segments(name, page_number, fragment_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_segments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_segments" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_segments" if page_number.nil?
      
      # verify the required parameter 'fragment_number' is set
      fail "Missing the required parameter 'fragment_number' when calling get_segments" if fragment_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if opts[:'with_empty']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_segments. Result: #{result.inspect}"
      end
      return result
    end

    # Read segment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemResponse]
    def get_segment(name, page_number, fragment_number, segment_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_segment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_segment" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_segment" if page_number.nil?
      
      # verify the required parameter 'fragment_number' is set
      fail "Missing the required parameter 'fragment_number' when calling get_segment" if fragment_number.nil?
      
      # verify the required parameter 'segment_number' is set
      fail "Missing the required parameter 'segment_number' when calling get_segment" if segment_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s).sub('{' + 'segmentNumber' + '}', segment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_segment. Result: #{result.inspect}"
      end
      return result
    end

    # Read segment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextFormatResponse]
    def get_segment_text_format(name, page_number, fragment_number, segment_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_segment_text_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_segment_text_format" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_segment_text_format" if page_number.nil?
      
      # verify the required parameter 'fragment_number' is set
      fail "Missing the required parameter 'fragment_number' when calling get_segment_text_format" if fragment_number.nil?
      
      # verify the required parameter 'segment_number' is set
      fail "Missing the required parameter 'segment_number' when calling get_segment_text_format" if segment_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textformat".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s).sub('{' + 'segmentNumber' + '}', segment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextFormatResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_segment_text_format. Result: #{result.inspect}"
      end
      return result
    end

    # Read page fragment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextFormatResponse]
    def get_fragment_text_format(name, page_number, fragment_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_fragment_text_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_fragment_text_format" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_fragment_text_format" if page_number.nil?
      
      # verify the required parameter 'fragment_number' is set
      fail "Missing the required parameter 'fragment_number' when calling get_fragment_text_format" if fragment_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextFormatResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_fragment_text_format. Result: #{result.inspect}"
      end
      return result
    end

    # Read document images.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ImagesResponse]
    def get_images(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_images ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_images" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_images" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/images".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImagesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_images. Result: #{result.inspect}"
      end
      return result
    end

    # Get image in specified format.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image number.
    # @param format The image format.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The image width.
    # @option opts [Integer] :height The image height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_image_with_format(name, page_number, image_number, format, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_image_with_format ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_image_with_format" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_image_with_format" if page_number.nil?
      
      # verify the required parameter 'image_number' is set
      fail "Missing the required parameter 'image_number' when calling get_image_with_format" if image_number.nil?
      
      # verify the required parameter 'format' is set
      fail "Missing the required parameter 'format' when calling get_image_with_format" if format.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'width'] = opts[:'width'] if opts[:'width']
      query_params[:'height'] = opts[:'height'] if opts[:'height']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_image_with_format. Result: #{result.inspect}"
      end
      return result
    end

    # Replace document image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :image_file Path to image file if specified. Request content is used otherwise.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ImageResponse]
    def post_replace_image(name, page_number, image_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_replace_image ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_replace_image" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling post_replace_image" if page_number.nil?
      
      # verify the required parameter 'image_number' is set
      fail "Missing the required parameter 'image_number' when calling post_replace_image" if image_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'imageFile'] = opts[:'image_file'] if opts[:'image_file']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImageResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_replace_image. Result: #{result.inspect}"
      end
      return result
    end

    # Recognize barcodes.
    # 
    # @param name Document name.
    # @param page_number Page number.
    # @param image_number Image number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage Document storage.
    # @option opts [String] :folder Document folder.
    # @return [BarcodeResponseList]
    def get_extract_barcodes(name, page_number, image_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_extract_barcodes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_extract_barcodes" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_extract_barcodes" if page_number.nil?
      
      # verify the required parameter 'image_number' is set
      fail "Missing the required parameter 'image_number' when calling get_extract_barcodes" if image_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}/recognize".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BarcodeResponseList')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_extract_barcodes. Result: #{result.inspect}"
      end
      return result
    end

    # Read document page link annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [LinkAnnotationsResponse]
    def get_page_link_annotations(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_link_annotations ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_link_annotations" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_link_annotations" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/links".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LinkAnnotationsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_link_annotations. Result: #{result.inspect}"
      end
      return result
    end

    # Read document page link annotation by its index.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param link_index The link index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [LinkAnnotationResponse]
    def get_page_link_annotation_by_index(name, page_number, link_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_link_annotation_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_link_annotation_by_index" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_link_annotation_by_index" if page_number.nil?
      
      # verify the required parameter 'link_index' is set
      fail "Missing the required parameter 'link_index' when calling get_page_link_annotation_by_index" if link_index.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/links/{linkIndex}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'linkIndex' + '}', link_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LinkAnnotationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_link_annotation_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Move page to new position.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param new_index The new page position/index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_move_page(name, page_number, new_index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_move_page ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_move_page" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling post_move_page" if page_number.nil?
      
      # verify the required parameter 'new_index' is set
      fail "Missing the required parameter 'new_index' when calling post_move_page" if new_index.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/movePage".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'newIndex'] = new_index
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_move_page. Result: #{result.inspect}"
      end
      return result
    end

    # Page&#39;s replace text method.
    # 
    # @param name 
    # @param page_number 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [PageTextReplaceResponse]
    def post_page_replace_text(name, page_number, text_replace, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_page_replace_text ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_page_replace_text" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling post_page_replace_text" if page_number.nil?
      
      # verify the required parameter 'text_replace' is set
      fail "Missing the required parameter 'text_replace' when calling post_page_replace_text" if text_replace.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/replaceText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageTextReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_page_replace_text. Result: #{result.inspect}"
      end
      return result
    end

    # Page&#39;s replace text method.
    # 
    # @param name 
    # @param page_number 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [PageTextReplaceResponse]
    def post_page_replace_text_list(name, page_number, text_replace_list_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_page_replace_text_list ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_page_replace_text_list" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling post_page_replace_text_list" if page_number.nil?
      
      # verify the required parameter 'text_replace_list_request' is set
      fail "Missing the required parameter 'text_replace_list_request' when calling post_page_replace_text_list" if text_replace_list_request.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/replaceTextList".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace_list_request)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageTextReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_page_replace_text_list. Result: #{result.inspect}"
      end
      return result
    end

    # Sign page.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param signature {Signature} with the signature data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_sign_page(name, page_number, signature, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_sign_page ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_sign_page" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling post_sign_page" if page_number.nil?
      
      # verify the required parameter 'signature' is set
      fail "Missing the required parameter 'signature' when calling post_sign_page" if signature.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/sign".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(signature)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_sign_page. Result: #{result.inspect}"
      end
      return result
    end

    # Add page stamp.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param stamp {Stamp} with data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def put_page_add_stamp(name, page_number, stamp, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#put_page_add_stamp ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_page_add_stamp" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling put_page_add_stamp" if page_number.nil?
      
      # verify the required parameter 'stamp' is set
      fail "Missing the required parameter 'stamp' when calling put_page_add_stamp" if stamp.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/stamp".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(stamp)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#put_page_add_stamp. Result: #{result.inspect}"
      end
      return result
    end

    # Read page text items.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_page_text_items(name, page_number, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_page_text_items ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_page_text_items" if name.nil?
      
      # verify the required parameter 'page_number' is set
      fail "Missing the required parameter 'page_number' when calling get_page_text_items" if page_number.nil?
      
      # resource path
      path = "/pdf/{name}/pages/{pageNumber}/textItems".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if opts[:'with_empty']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_page_text_items. Result: #{result.inspect}"
      end
      return result
    end

    # Document&#39;s replace text method.
    # 
    # @param name 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentTextReplaceResponse]
    def post_document_replace_text(name, text_replace, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_document_replace_text ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_document_replace_text" if name.nil?
      
      # verify the required parameter 'text_replace' is set
      fail "Missing the required parameter 'text_replace' when calling post_document_replace_text" if text_replace.nil?
      
      # resource path
      path = "/pdf/{name}/replaceText".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentTextReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_document_replace_text. Result: #{result.inspect}"
      end
      return result
    end

    # Document&#39;s replace text method.
    # 
    # @param name 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentTextReplaceResponse]
    def post_document_replace_text_list(name, text_replace_list_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_document_replace_text_list ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_document_replace_text_list" if name.nil?
      
      # verify the required parameter 'text_replace_list_request' is set
      fail "Missing the required parameter 'text_replace_list_request' when calling post_document_replace_text_list" if text_replace_list_request.nil?
      
      # resource path
      path = "/pdf/{name}/replaceTextList".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace_list_request)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentTextReplaceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_document_replace_text_list. Result: #{result.inspect}"
      end
      return result
    end

    # Sign document.
    # 
    # @param name The document name.
    # @param signature {Signature} with signature data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_sign_document(name, signature, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_sign_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_sign_document" if name.nil?
      
      # verify the required parameter 'signature' is set
      fail "Missing the required parameter 'signature' when calling post_sign_document" if signature.nil?
      
      # resource path
      path = "/pdf/{name}/sign".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(signature)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_sign_document. Result: #{result.inspect}"
      end
      return result
    end

    # Split document to parts.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Resulting documents format.
    # @option opts [Integer] :from Start page if defined.
    # @option opts [Integer] :to End page if defined.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SplitResultResponse]
    def post_split_document(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#post_split_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_split_document" if name.nil?
      
      # resource path
      path = "/pdf/{name}/split".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'from'] = opts[:'from'] if opts[:'from']
      query_params[:'to'] = opts[:'to'] if opts[:'to']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SplitResultResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#post_split_document. Result: #{result.inspect}"
      end
      return result
    end

    # Read document text items.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_text_items(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PdfApi#get_text_items ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_text_items" if name.nil?
      
      # resource path
      path = "/pdf/{name}/textItems".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if opts[:'with_empty']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: PdfApi#get_text_items. Result: #{result.inspect}"
      end
      return result
    end
    
    # Read document page info.
    #
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [PageResponse]
    def get_page(name, page_number, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: PdfApi#get_page ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_page" if name.nil?
        
        # verify the required parameter 'page_number' is set
        fail "Missing the required parameter 'page_number' when calling get_page" if page_number.nil?
        
        # resource path
        path = "/pdf/{name}/pages/{pageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['application/json']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'PageResponse')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: PdfApi#get_page. Result: #{result.inspect}"
                                      end
                                      return result
    end
    
    # Read common document info.
    #
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentResponse]
    def get_document(name, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: PdfApi#get_document ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_document" if name.nil?
        
        # resource path
        path = "/pdf/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['application/json']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'DocumentResponse')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: PdfApi#get_document. Result: #{result.inspect}"
                                      end
                                      return result
    end
    
    # Read document image by number.
    #
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ImageResponse]
    def get_image(name, page_number, image_number, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: PdfApi#get_image ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_image" if name.nil?
        
        # verify the required parameter 'page_number' is set
        fail "Missing the required parameter 'page_number' when calling get_image" if page_number.nil?
        
        # verify the required parameter 'image_number' is set
        fail "Missing the required parameter 'image_number' when calling get_image" if image_number.nil?
        
        # resource path
        path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['application/json']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'ImageResponse')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: PdfApi#get_image. Result: #{result.inspect}"
                                      end
                                      return result
    end
    
  end
end
