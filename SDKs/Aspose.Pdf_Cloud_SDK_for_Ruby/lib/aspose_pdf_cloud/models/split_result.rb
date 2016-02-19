module AsposePDFCloud
  # 
  class SplitResult < BaseObject
    attr_accessor :documents
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'documents' => :'Documents'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'documents' => :'Array<SplitResultDocument>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Documents']
        if (value = attributes[:'Documents']).is_a?(Array)
          self.documents = value
        end
      end
      
    end

  end
end
