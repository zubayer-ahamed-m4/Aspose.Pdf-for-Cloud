module AsposePDFCloud
  # 
  class TextItem < BaseObject
    attr_accessor :text, :format, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'text' => :'Text',
        
        # 
        :'format' => :'Format',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text' => :'String',
        :'format' => :'TextFormat',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Text']
        self.text = attributes[:'Text']
      end
      
      if attributes[:'Format']
        self.format = attributes[:'Format']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
