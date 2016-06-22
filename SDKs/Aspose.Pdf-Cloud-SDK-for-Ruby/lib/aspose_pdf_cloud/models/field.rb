module AsposePDFCloud
  # 
  class Field < BaseObject
    attr_accessor :name, :type, :values, :selected_items, :rect, :links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'type' => :'Type',
        
        # 
        :'values' => :'Values',
        
        # 
        :'selected_items' => :'SelectedItems',
        
        # 
        :'rect' => :'Rect',
        
        # 
        :'links' => :'Links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'type' => :'String',
        :'values' => :'Array<String>',
        :'selected_items' => :'Array<Integer>',
        :'rect' => :'Rectangle',
        :'links' => :'Array<Link>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Values']
        if (value = attributes[:'Values']).is_a?(Array)
          self.values = value
        end
      end
      
      if attributes[:'SelectedItems']
        if (value = attributes[:'SelectedItems']).is_a?(Array)
          self.selected_items = value
        end
      end
      
      if attributes[:'Rect']
        self.rect = attributes[:'Rect']
      end
      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
    end

  end
end
