module AsposePDFCloud
  # 
  class PageWordCount < BaseObject
    attr_accessor :page_number, :count
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'page_number' => :'PageNumber',
        
        # 
        :'count' => :'Count'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'page_number' => :'Integer',
        :'count' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'PageNumber']
        self.page_number = attributes[:'PageNumber']
      end
      
      if attributes[:'Count']
        self.count = attributes[:'Count']
      end
      
    end

  end
end
