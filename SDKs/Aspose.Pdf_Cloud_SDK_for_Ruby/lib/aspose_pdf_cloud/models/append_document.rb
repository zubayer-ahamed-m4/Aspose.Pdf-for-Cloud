module AsposePDFCloud
  # 
  class AppendDocument < BaseObject
    attr_accessor :document, :start_page, :end_page
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'document' => :'Document',
        
        # 
        :'start_page' => :'StartPage',
        
        # 
        :'end_page' => :'EndPage'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'document' => :'String',
        :'start_page' => :'Integer',
        :'end_page' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Document']
        self.document = attributes[:'Document']
      end
      
      if attributes[:'StartPage']
        self.start_page = attributes[:'StartPage']
      end
      
      if attributes[:'EndPage']
        self.end_page = attributes[:'EndPage']
      end
      
    end

  end
end
