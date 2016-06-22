module AsposePDFCloud
  # 
  class WordCount < BaseObject
    attr_accessor :list
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'list' => :'List'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'list' => :'Array<PageWordCount>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'List']
        if (value = attributes[:'List']).is_a?(Array)
          self.list = value
        end
      end
      
    end

  end
end
