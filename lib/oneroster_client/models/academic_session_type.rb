=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'
require 'oneroster_client/models/base_type'

module OneRosterClient
  # ...tbd (Class description)...
  class AcademicSessionType < BaseType
    # Model Primitive Datatype = NormalizedString
    attr_accessor :title

    # Model Primitive Datatype = Date
    attr_accessor :start_date

    # Model Primitive Datatype = Date
    attr_accessor :end_date

    attr_accessor :type

    attr_accessor :parent

    attr_accessor :children

    # Model Primitive Datatype = NormalizedString
    attr_accessor :school_year

    # ...tbd (Class description)...
    attr_accessor :sourced_id

    attr_accessor :status

    # Model Primitive Datatype = DateTime
    attr_accessor :date_last_modified

    # ...tbd (Class description)...
    attr_accessor :metadata

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'type' => :'type',
        :'parent' => :'parent',
        :'children' => :'children',
        :'school_year' => :'schoolYear',
        :'sourced_id' => :'sourcedId',
        :'status' => :'status',
        :'date_last_modified' => :'dateLastModified',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'title' => :'String',
        :'start_date' => :'Date',
        :'end_date' => :'Date',
        :'type' => :'String',
        :'parent' => :'GUIDRefType',
        :'children' => :'Array<GUIDRefType>',
        :'school_year' => :'Integer',
        :'sourced_id' => :'String',
        :'status' => :'String',
        :'date_last_modified' => :'DateTime',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneRosterClient::AcademicSessionType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneRosterClient::AcademicSessionType`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.key?(:'school_year')
        self.school_year = attributes[:'school_year']
      end

      if attributes.key?(:'sourced_id')
        self.sourced_id = attributes[:'sourced_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'date_last_modified')
        self.date_last_modified = attributes[:'date_last_modified']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @school_year.nil?
        invalid_properties.push('invalid value for "school_year", school_year cannot be nil.')
      end

      if @sourced_id.nil?
        invalid_properties.push('invalid value for "sourced_id", sourced_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @date_last_modified.nil?
        invalid_properties.push('invalid value for "date_last_modified", date_last_modified cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @start_date.nil?
      return false if @end_date.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('', ['gradingPeriod', 'semester', 'schoolYear', 'term'])
      return false unless type_validator.valid?(@type)
      return false if @school_year.nil?
      return false if @sourced_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('', ['active', 'tobedeleted'])
      return false unless status_validator.valid?(@status)
      return false if @date_last_modified.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('', ['gradingPeriod', 'semester', 'schoolYear', 'term'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('', ['active', 'tobedeleted'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          type == o.type &&
          parent == o.parent &&
          children == o.children &&
          school_year == o.school_year &&
          sourced_id == o.sourced_id &&
          status == o.status &&
          date_last_modified == o.date_last_modified &&
          metadata == o.metadata && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, start_date, end_date, type, parent, children, school_year, sourced_id, status, date_last_modified, metadata].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OneRosterClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
