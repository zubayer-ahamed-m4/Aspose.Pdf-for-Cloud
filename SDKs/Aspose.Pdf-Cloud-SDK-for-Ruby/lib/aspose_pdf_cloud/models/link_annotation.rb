module AsposePDFCloud
  # 
  class LinkAnnotation < BaseObject
    attr_accessor :action_type, :action, :highlighting, :color, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'action_type' => :'ActionType',
        
        # 
        :'action' => :'Action',
        
        # 
        :'highlighting' => :'Highlighting',
        
        # 
        :'color' => :'Color',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'action_type' => :'String',
        :'action' => :'String',
        :'highlighting' => :'String',
        :'color' => :'Color',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ActionType']
        self.action_type = attributes[:'ActionType']
      end
      
      if attributes[:'Action']
        self.action = attributes[:'Action']
      end
      
      if attributes[:'Highlighting']
        self.highlighting = attributes[:'Highlighting']
      end
      
      if attributes[:'Color']
        self.color = attributes[:'Color']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
