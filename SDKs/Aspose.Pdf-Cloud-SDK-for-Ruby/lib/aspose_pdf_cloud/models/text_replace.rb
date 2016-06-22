module AsposePDFCloud
  # 
  class TextReplace < BaseObject
    attr_accessor :old_value, :new_value, :regex
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'old_value' => :'OldValue',
        
        # 
        :'new_value' => :'NewValue',
        
        # 
        :'regex' => :'Regex'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'old_value' => :'String',
        :'new_value' => :'String',
        :'regex' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'OldValue']
        self.old_value = attributes[:'OldValue']
      end
      
      if attributes[:'NewValue']
        self.new_value = attributes[:'NewValue']
      end
      
      if attributes[:'Regex']
        self.regex = attributes[:'Regex']
      end
      
    end

  end
end
