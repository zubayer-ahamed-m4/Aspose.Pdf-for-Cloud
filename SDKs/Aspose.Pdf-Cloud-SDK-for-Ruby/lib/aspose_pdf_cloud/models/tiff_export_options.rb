module AsposePDFCloud
  # 
  class TiffExportOptions < BaseObject
    attr_accessor :brightness, :compression, :color_depth, :left_margin, :right_margin, :top_margin, :bottom_margin, :orientation, :skip_blank_pages, :width, :height, :x_resolution, :y_resolution, :page_index, :page_count, :result_file
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'brightness' => :'Brightness',
        
        # 
        :'compression' => :'Compression',
        
        # 
        :'color_depth' => :'ColorDepth',
        
        # 
        :'left_margin' => :'LeftMargin',
        
        # 
        :'right_margin' => :'RightMargin',
        
        # 
        :'top_margin' => :'TopMargin',
        
        # 
        :'bottom_margin' => :'BottomMargin',
        
        # 
        :'orientation' => :'Orientation',
        
        # 
        :'skip_blank_pages' => :'SkipBlankPages',
        
        # 
        :'width' => :'Width',
        
        # 
        :'height' => :'Height',
        
        # 
        :'x_resolution' => :'XResolution',
        
        # 
        :'y_resolution' => :'YResolution',
        
        # 
        :'page_index' => :'PageIndex',
        
        # 
        :'page_count' => :'PageCount',
        
        # 
        :'result_file' => :'ResultFile'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'brightness' => :'Float',
        :'compression' => :'String',
        :'color_depth' => :'String',
        :'left_margin' => :'Integer',
        :'right_margin' => :'Integer',
        :'top_margin' => :'Integer',
        :'bottom_margin' => :'Integer',
        :'orientation' => :'String',
        :'skip_blank_pages' => :'BOOLEAN',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x_resolution' => :'Integer',
        :'y_resolution' => :'Integer',
        :'page_index' => :'Integer',
        :'page_count' => :'Integer',
        :'result_file' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Brightness']
        self.brightness = attributes[:'Brightness']
      end
      
      if attributes[:'Compression']
        self.compression = attributes[:'Compression']
      end
      
      if attributes[:'ColorDepth']
        self.color_depth = attributes[:'ColorDepth']
      end
      
      if attributes[:'LeftMargin']
        self.left_margin = attributes[:'LeftMargin']
      end
      
      if attributes[:'RightMargin']
        self.right_margin = attributes[:'RightMargin']
      end
      
      if attributes[:'TopMargin']
        self.top_margin = attributes[:'TopMargin']
      end
      
      if attributes[:'BottomMargin']
        self.bottom_margin = attributes[:'BottomMargin']
      end
      
      if attributes[:'Orientation']
        self.orientation = attributes[:'Orientation']
      end
      
      if attributes[:'SkipBlankPages']
        self.skip_blank_pages = attributes[:'SkipBlankPages']
      end
      
      if attributes[:'Width']
        self.width = attributes[:'Width']
      end
      
      if attributes[:'Height']
        self.height = attributes[:'Height']
      end
      
      if attributes[:'XResolution']
        self.x_resolution = attributes[:'XResolution']
      end
      
      if attributes[:'YResolution']
        self.y_resolution = attributes[:'YResolution']
      end
      
      if attributes[:'PageIndex']
        self.page_index = attributes[:'PageIndex']
      end
      
      if attributes[:'PageCount']
        self.page_count = attributes[:'PageCount']
      end
      
      if attributes[:'ResultFile']
        self.result_file = attributes[:'ResultFile']
      end
      
    end

  end
end
