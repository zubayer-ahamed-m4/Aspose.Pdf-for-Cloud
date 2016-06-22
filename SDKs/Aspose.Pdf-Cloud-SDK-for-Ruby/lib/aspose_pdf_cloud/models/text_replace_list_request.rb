module AsposePDFCloud
  # 
  class TextReplaceListRequest < BaseObject
    attr_accessor :text_replaces
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'text_replaces' => :'TextReplaces'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text_replaces' => :'Array<TextReplace>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'TextReplaces']
        if (value = attributes[:'TextReplaces']).is_a?(Array)
          self.text_replaces = value
        end
      end
      
    end

  end
end
