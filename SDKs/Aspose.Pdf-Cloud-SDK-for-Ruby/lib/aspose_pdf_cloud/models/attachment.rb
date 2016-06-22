module AsposePDFCloud
  # 
  class Attachment < BaseObject
    attr_accessor :description, :mime_type, :name, :creation_date, :modification_date, :size, :check_sum, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'description' => :'Description',
        
        # 
        :'mime_type' => :'MimeType',
        
        # 
        :'name' => :'Name',
        
        # 
        :'creation_date' => :'CreationDate',
        
        # 
        :'modification_date' => :'ModificationDate',
        
        # 
        :'size' => :'Size',
        
        # 
        :'check_sum' => :'CheckSum',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'description' => :'String',
        :'mime_type' => :'String',
        :'name' => :'String',
        :'creation_date' => :'String',
        :'modification_date' => :'String',
        :'size' => :'Integer',
        :'check_sum' => :'String',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Description']
        self.description = attributes[:'Description']
      end
      
      if attributes[:'MimeType']
        self.mime_type = attributes[:'MimeType']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'CreationDate']
        self.creation_date = attributes[:'CreationDate']
      end
      
      if attributes[:'ModificationDate']
        self.modification_date = attributes[:'ModificationDate']
      end
      
      if attributes[:'Size']
        self.size = attributes[:'Size']
      end
      
      if attributes[:'CheckSum']
        self.check_sum = attributes[:'CheckSum']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
