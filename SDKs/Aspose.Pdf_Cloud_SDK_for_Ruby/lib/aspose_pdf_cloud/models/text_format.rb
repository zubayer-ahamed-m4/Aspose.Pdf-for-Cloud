module AsposePDFCloud
  # 
  class TextFormat < BaseObject
    attr_accessor :color, :font_size, :font_name, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'font_size' => :'FontSize',
        
        # 
        :'font_name' => :'FontName',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'font_size' => :'Float',
        :'font_name' => :'String',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'FontSize']
        self.font_size = attributes[:'FontSize']
      end
      
      if attributes[:'FontName']
        self.font_name = attributes[:'FontName']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
