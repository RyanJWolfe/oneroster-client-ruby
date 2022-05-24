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
  class UserType < BaseType
    # Model Primitive Datatype = NormalizedString
    attr_accessor :username

    attr_accessor :user_ids

    # Model Primitive Datatype = Boolean
    attr_accessor :enabled_user

    # Model Primitive Datatype = NormalizedString
    attr_accessor :given_name

    # Model Primitive Datatype = NormalizedString
    attr_accessor :family_name

    # Model Primitive Datatype = NormalizedString
    attr_accessor :middle_name

    attr_accessor :role

    # ...tbd (Class description)...
    attr_accessor :identifier

    # Model Primitive Datatype = NormalizedString
    attr_accessor :email

    # Model Primitive Datatype = NormalizedString
    attr_accessor :sms

    # Model Primitive Datatype = NormalizedString
    attr_accessor :phone

    attr_accessor :agents

    attr_accessor :orgs

    # Model Primitive Datatype = NormalizedString
    attr_accessor :grades

    # Model Primitive Datatype = String
    attr_accessor :password

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
        :'username' => :'username',
        :'user_ids' => :'userIds',
        :'enabled_user' => :'enabledUser',
        :'given_name' => :'givenName',
        :'family_name' => :'familyName',
        :'middle_name' => :'middleName',
        :'role' => :'role',
        :'identifier' => :'identifier',
        :'email' => :'email',
        :'sms' => :'sms',
        :'phone' => :'phone',
        :'agents' => :'agents',
        :'orgs' => :'orgs',
        :'grades' => :'grades',
        :'password' => :'password',
        :'sourced_id' => :'sourcedId',
        :'status' => :'status',
        :'date_last_modified' => :'dateLastModified',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'username' => :'String',
        :'user_ids' => :'Array<Object>',
        :'enabled_user' => :'Boolean',
        :'given_name' => :'String',
        :'family_name' => :'String',
        :'middle_name' => :'String',
        :'role' => :'String',
        :'identifier' => :'String',
        :'email' => :'String',
        :'sms' => :'String',
        :'phone' => :'String',
        :'agents' => :'Array<GUIDRefType>',
        :'orgs' => :'Array<GUIDRefType>',
        :'grades' => :'Array<String>',
        :'password' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneRosterClient::UserType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneRosterClient::UserType`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'user_ids')
        if (value = attributes[:'user_ids']).is_a?(Array)
          self.user_ids = value
        end
      end

      if attributes.key?(:'enabled_user')
        self.enabled_user = attributes[:'enabled_user']
      end

      if attributes.key?(:'given_name')
        self.given_name = attributes[:'given_name']
      end

      if attributes.key?(:'family_name')
        self.family_name = attributes[:'family_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'sms')
        self.sms = attributes[:'sms']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.key?(:'orgs')
        if (value = attributes[:'orgs']).is_a?(Array)
          self.orgs = value
        end
      end

      if attributes.key?(:'grades')
        if (value = attributes[:'grades']).is_a?(Array)
          self.grades = value
        end
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
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
      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      if @given_name.nil?
        invalid_properties.push('invalid value for "given_name", given_name cannot be nil.')
      end

      if @family_name.nil?
        invalid_properties.push('invalid value for "family_name", family_name cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if @orgs.nil?
        invalid_properties.push('invalid value for "orgs", orgs cannot be nil.')
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
      return false if @username.nil?
      return false if @given_name.nil?
      return false if @family_name.nil?
      return false if @role.nil?
      role_validator = EnumAttributeValidator.new('', ['administrator', 'aide', 'guardian', 'parent', 'proctor', 'relative', 'student', 'teacher'])
      return false unless role_validator.valid?(@role)
      return false if @orgs.nil?
      return false if @sourced_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('', ['active', 'tobedeleted'])
      return false unless status_validator.valid?(@status)
      return false if @date_last_modified.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('', ['administrator', 'aide', 'guardian', 'parent', 'proctor', 'relative', 'student', 'teacher'])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for \"role\", must be one of #{validator.allowable_values}."
      end
      @role = role
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
          username == o.username &&
          user_ids == o.user_ids &&
          enabled_user == o.enabled_user &&
          given_name == o.given_name &&
          family_name == o.family_name &&
          middle_name == o.middle_name &&
          role == o.role &&
          identifier == o.identifier &&
          email == o.email &&
          sms == o.sms &&
          phone == o.phone &&
          agents == o.agents &&
          orgs == o.orgs &&
          grades == o.grades &&
          password == o.password &&
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
      [username, user_ids, enabled_user, given_name, family_name, middle_name, role, identifier, email, sms, phone, agents, orgs, grades, password, sourced_id, status, date_last_modified, metadata].hash
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
