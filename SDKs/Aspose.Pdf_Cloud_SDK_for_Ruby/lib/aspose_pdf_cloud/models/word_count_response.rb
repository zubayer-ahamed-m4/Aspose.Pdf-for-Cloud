module AsposePDFCloud
  # 
  class WordCountResponse < BaseObject
    attr_accessor :words_per_page, :status, :code
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'words_per_page' => :'WordsPerPage',
        
        # 
        :'status' => :'Status',
        
        # 
        :'code' => :'Code'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'words_per_page' => :'WordCount',
        :'status' => :'String',
        :'code' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'WordsPerPage']
        self.words_per_page = attributes[:'WordsPerPage']
      end
      
      if attributes[:'Status']
        self.status = attributes[:'Status']
      end
      
      if attributes[:'Code']
        self.code = attributes[:'Code']
      end
      
    end

    def status=(status)
      allowed_values = ["Continue", "SwitchingProtocols", "OK", "Created", "Accepted", "NonAuthoritativeInformation", "NoContent", "ResetContent", "PartialContent", "MultipleChoices", "Ambiguous", "MovedPermanently", "Moved", "Found", "Redirect", "SeeOther", "RedirectMethod", "NotModified", "UseProxy", "Unused", "TemporaryRedirect", "RedirectKeepVerb", "BadRequest", "Unauthorized", "PaymentRequired", "Forbidden", "NotFound", "MethodNotAllowed", "NotAcceptable", "ProxyAuthenticationRequired", "RequestTimeout", "Conflict", "Gone", "LengthRequired", "PreconditionFailed", "RequestEntityTooLarge", "RequestUriTooLong", "UnsupportedMediaType", "RequestedRangeNotSatisfiable", "ExpectationFailed", "UpgradeRequired", "InternalServerError", "NotImplemented", "BadGateway", "ServiceUnavailable", "GatewayTimeout", "HttpVersionNotSupported"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end
