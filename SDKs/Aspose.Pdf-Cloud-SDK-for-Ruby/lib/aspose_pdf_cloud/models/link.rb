module AsposePDFCloud
  # 
  class Link < BaseObject
    attr_accessor :href, :rel, :type, :title
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'href' => :'Href',
        
        # 
        :'rel' => :'Rel',
        
        # 
        :'type' => :'Type',
        
        # 
        :'title' => :'Title'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'href' => :'String',
        :'rel' => :'String',
        :'type' => :'String',
        :'title' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Href']
        self.href = attributes[:'Href']
      end
      
      if attributes[:'Rel']
        self.rel = attributes[:'Rel']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Title']
        self.title = attributes[:'Title']
      end
      
    end

  end
end
