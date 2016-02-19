module AsposePDFCloud
  # 
  class Signature < BaseObject
    attr_accessor :signature_path, :signature_type, :password, :contact, :location, :visible, :rectangle, :form_field_name, :authority, :date
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The SignaturePath
        :'signature_path' => :'SignaturePath',
        
        # The SignatureType
        :'signature_type' => :'SignatureType',
        
        # The Password
        :'password' => :'Password',
        
        # The Contact
        :'contact' => :'Contact',
        
        # The Location
        :'location' => :'Location',
        
        # The Visible
        :'visible' => :'Visible',
        
        # The Rectangle
        :'rectangle' => :'Rectangle',
        
        # The FormFieldName
        :'form_field_name' => :'FormFieldName',
        
        # The Authority
        :'authority' => :'Authority',
        
        # The Date
        :'date' => :'Date'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'signature_path' => :'String',
        :'signature_type' => :'String',
        :'password' => :'String',
        :'contact' => :'String',
        :'location' => :'String',
        :'visible' => :'BOOLEAN',
        :'rectangle' => :'Rectangle',
        :'form_field_name' => :'String',
        :'authority' => :'String',
        :'date' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'SignaturePath']
        self.signature_path = attributes[:'SignaturePath']
      end
      
      if attributes[:'SignatureType']
        self.signature_type = attributes[:'SignatureType']
      end
      
      if attributes[:'Password']
        self.password = attributes[:'Password']
      end
      
      if attributes[:'Contact']
        self.contact = attributes[:'Contact']
      end
      
      if attributes[:'Location']
        self.location = attributes[:'Location']
      end
      
      if attributes[:'Visible']
        self.visible = attributes[:'Visible']
      end
      
      if attributes[:'Rectangle']
        self.rectangle = attributes[:'Rectangle']
      end
      
      if attributes[:'FormFieldName']
        self.form_field_name = attributes[:'FormFieldName']
      end
      
      if attributes[:'Authority']
        self.authority = attributes[:'Authority']
      end
      
      if attributes[:'Date']
        self.date = attributes[:'Date']
      end
      
    end

  end
end
