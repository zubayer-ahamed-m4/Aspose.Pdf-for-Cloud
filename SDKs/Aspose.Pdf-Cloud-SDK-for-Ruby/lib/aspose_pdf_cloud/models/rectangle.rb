module AsposePDFCloud
  # 
  class Rectangle < BaseObject
    attr_accessor :x, :y, :width, :height
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The x coord
        :'x' => :'X',
        
        # The y coord
        :'y' => :'Y',
        
        # The width
        :'width' => :'Width',
        
        # The height
        :'height' => :'Height'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'X']
        self.x = attributes[:'X']
      end
      
      if attributes[:'Y']
        self.y = attributes[:'Y']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
    end

  end
end
