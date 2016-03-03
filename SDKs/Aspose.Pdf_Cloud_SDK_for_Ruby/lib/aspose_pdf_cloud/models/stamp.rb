module AsposePDFCloud
  # 
  class Stamp < BaseObject
    attr_accessor :type, :background, :bottom_margin, :horizontal_alignment, :left_margin, :opacity, :right_margin, :rotate, :rotate_angle, :top_margin, :vertical_alignment, :x_indent, :y_indent, :zoom, :text_alignment, :value, :text_state, :file_name, :width, :height, :page_index, :starting_number
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'type' => :'Type',
        
        # 
        :'background' => :'Background',
        
        # 
        :'bottom_margin' => :'BottomMargin',
        
        # 
        :'horizontal_alignment' => :'HorizontalAlignment',
        
        # 
        :'left_margin' => :'LeftMargin',
        
        # 
        :'opacity' => :'Opacity',
        
        # 
        :'right_margin' => :'RightMargin',
        
        # 
        :'rotate' => :'Rotate',
        
        # 
        :'rotate_angle' => :'RotateAngle',
        
        # 
        :'top_margin' => :'TopMargin',
        
        # 
        :'vertical_alignment' => :'VerticalAlignment',
        
        # 
        :'x_indent' => :'XIndent',
        
        # 
        :'y_indent' => :'YIndent',
        
        # 
        :'zoom' => :'Zoom',
        
        # 
        :'text_alignment' => :'TextAlignment',
        
        # 
        :'value' => :'Value',
        
        # 
        :'text_state' => :'TextState',
        
        # 
        :'file_name' => :'FileName',
        
        # 
        :'width' => :'Width',
        
        # 
        :'height' => :'Height',
        
        # 
        :'page_index' => :'PageIndex',
        
        # 
        :'starting_number' => :'StartingNumber'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'type' => :'String',
        :'background' => :'BOOLEAN',
        :'bottom_margin' => :'Float',
        :'horizontal_alignment' => :'String',
        :'left_margin' => :'Float',
        :'opacity' => :'Float',
        :'right_margin' => :'Float',
        :'rotate' => :'String',
        :'rotate_angle' => :'Float',
        :'top_margin' => :'Float',
        :'vertical_alignment' => :'String',
        :'x_indent' => :'Float',
        :'y_indent' => :'Float',
        :'zoom' => :'Float',
        :'text_alignment' => :'String',
        :'value' => :'String',
        :'text_state' => :'TextState',
        :'file_name' => :'String',
        :'width' => :'Float',
        :'height' => :'Float',
        :'page_index' => :'Integer',
        :'starting_number' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Background']
        self.background = attributes[:'Background']
      end
      
      if attributes[:'BottomMargin']
        self.bottom_margin = attributes[:'BottomMargin']
      end
      
      if attributes[:'HorizontalAlignment']
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end
      
      if attributes[:'LeftMargin']
        self.left_margin = attributes[:'LeftMargin']
      end
      
      if attributes[:'Opacity']
        self.opacity = attributes[:'Opacity']
      end
      
      if attributes[:'RightMargin']
        self.right_margin = attributes[:'RightMargin']
      end
      
      if attributes[:'Rotate']
        self.rotate = attributes[:'Rotate']
      end
      
      if attributes[:'RotateAngle']
        self.rotate_angle = attributes[:'RotateAngle']
      end
      
      if attributes[:'TopMargin']
        self.top_margin = attributes[:'TopMargin']
      end
      
      if attributes[:'VerticalAlignment']
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end
      
      if attributes[:'XIndent']
        self.x_indent = attributes[:'XIndent']
      end
      
      if attributes[:'YIndent']
        self.y_indent = attributes[:'YIndent']
      end
      
      if attributes[:'Zoom']
        self.zoom = attributes[:'Zoom']
      end
      
      if attributes[:'TextAlignment']
        self.text_alignment = attributes[:'TextAlignment']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
      if attributes[:'TextState']
        self.text_state = attributes[:'TextState']
      end
      
      if attributes[:'FileName']
        self.file_name = attributes[:'FileName']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'PageIndex']
        self.page_index = attributes[:'PageIndex']
      end
      
      if attributes[:'StartingNumber']
        self.starting_number = attributes[:'StartingNumber']
      end
      
    end

  end
end
