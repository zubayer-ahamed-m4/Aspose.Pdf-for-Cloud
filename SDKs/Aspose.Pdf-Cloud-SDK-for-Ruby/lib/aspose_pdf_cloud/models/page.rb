module AsposePDFCloud
  # 
  class Page < BaseObject
    attr_accessor :id, :images, :rectangle, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'Id',
        
        # 
        :'images' => :'Images',
        
        # 
        :'rectangle' => :'Rectangle',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'images' => :'Images',
        :'rectangle' => :'Rectangle',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Id']
        self.id = attributes[:'Id']
      end
      
      if attributes[:'Images']
        self.images = attributes[:'Images']
      end
      
      if attributes[:'Rectangle']
        self.rectangle = attributes[:'Rectangle']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
