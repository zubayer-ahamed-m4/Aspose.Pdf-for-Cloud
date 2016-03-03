module AsposePDFCloud
  # 
  class Document < BaseObject
    attr_accessor :document_properties, :pages, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'document_properties' => :'DocumentProperties',
        
        # 
        :'pages' => :'Pages',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'document_properties' => :'DocumentProperties',
        :'pages' => :'Pages',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DocumentProperties']
        self.document_properties = attributes[:'DocumentProperties']
      end
      
      if attributes[:'Pages']
        self.pages = attributes[:'Pages']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
