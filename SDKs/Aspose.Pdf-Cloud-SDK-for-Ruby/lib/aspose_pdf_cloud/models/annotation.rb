module AsposePDFCloud
  # 
  class Annotation < BaseObject
    attr_accessor :color, :contents, :creation_date, :subject, :title, :modified, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'color' => :'Color',
        
        # 
        :'contents' => :'Contents',
        
        # 
        :'creation_date' => :'CreationDate',
        
        # 
        :'subject' => :'Subject',
        
        # 
        :'title' => :'Title',
        
        # 
        :'modified' => :'Modified',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'color' => :'Color',
        :'contents' => :'String',
        :'creation_date' => :'String',
        :'subject' => :'String',
        :'title' => :'String',
        :'modified' => :'String',
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
      
      if attributes[:'Contents']
        self.contents = attributes[:'Contents']
      end
      
      if attributes[:'CreationDate']
        self.creation_date = attributes[:'CreationDate']
      end
      
      if attributes[:'Subject']
        self.subject = attributes[:'Subject']
      end
      
      if attributes[:'Title']
        self.title = attributes[:'Title']
      end
      
      if attributes[:'Modified']
        self.modified = attributes[:'Modified']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
