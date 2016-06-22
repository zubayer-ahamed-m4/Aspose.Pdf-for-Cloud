module AsposePDFCloud
  # 
  class Color < BaseObject
    attr_accessor :a, :r, :g, :b
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'a' => :'A',
        
        # 
        :'r' => :'R',
        
        # 
        :'g' => :'G',
        
        # 
        :'b' => :'B'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'a' => :'String',
        :'r' => :'String',
        :'g' => :'String',
        :'b' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'A']
        self.a = attributes[:'A']
      end
      
      if attributes[:'R']
        self.r = attributes[:'R']
      end
      
      if attributes[:'G']
        self.g = attributes[:'G']
      end
      
      if attributes[:'B']
        self.b = attributes[:'B']
      end
      
    end

  end
end
