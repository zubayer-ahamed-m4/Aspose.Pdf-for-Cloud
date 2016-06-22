module AsposePDFCloud
  # 
  class TextState < BaseObject
    attr_accessor :font_size, :font, :foreground_color, :background_color, :font_style
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'font_size' => :'FontSize',
        
        # 
        :'font' => :'Font',
        
        # 
        :'foreground_color' => :'ForegroundColor',
        
        # 
        :'background_color' => :'BackgroundColor',
        
        # 
        :'font_style' => :'FontStyle'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'font_size' => :'Float',
        :'font' => :'String',
        :'foreground_color' => :'Color',
        :'background_color' => :'Color',
        :'font_style' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FontSize']
        self.font_size = attributes[:'FontSize']
      end
      
      if attributes[:'Font']
        self.font = attributes[:'Font']
      end
      
      if attributes[:'ForegroundColor']
        self.foreground_color = attributes[:'ForegroundColor']
      end
      
      if attributes[:'BackgroundColor']
        self.background_color = attributes[:'BackgroundColor']
      end
      
      if attributes[:'FontStyle']
        self.font_style = attributes[:'FontStyle']
      end
      
    end

  end
end
