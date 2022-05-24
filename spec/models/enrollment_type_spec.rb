=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OneRosterClient::EnrollmentType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EnrollmentType' do
  before do
    # run before each test
    obj = build(:one_roster_enrollment)
    @instance = OneRosterClient::EnrollmentType.build_from_hash(obj.to_hash)
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnrollmentType' do
    it 'should create an instance of EnrollmentType' do
      expect(@instance).to be_instance_of(OneRosterClient::EnrollmentType)
    end
  end
  describe 'test attribute "user"' do
    it 'should work' do
      expect(@instance.user).to be_a(OneRosterClient::GUIDRefType)
    end
  end

  describe 'test attribute "_class"' do
    it 'should work' do
      expect(@instance._class).to be_a(OneRosterClient::GUIDRefType)
    end
  end

  describe 'test attribute "school"' do
    it 'should work' do
      expect(@instance.school).to be_a(OneRosterClient::GUIDRefType)
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      expect(@instance.role).to be_a(String)
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["administrator", "aide", "guardian", "parent", "proctor", "relative", "student", "teacher"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "primary"' do
    it 'should work' do
      expect(@instance.primary).to be_a(TrueClass).or be_a(FalseClass)
    end
  end

  describe 'test attribute "begin_date"' do
    it 'should work' do
      expect(@instance.begin_date).to be_a(Date)
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      expect(@instance.end_date).to be_a(Date)
    end
  end

  describe 'test attribute "sourced_id"' do
    it 'should work' do
      expect(@instance.sourced_id).to be_a(String)
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      expect(@instance.status).to be_a(String)
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["active", "tobedeleted"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "date_last_modified"' do
    it 'should work' do
      expect(@instance.date_last_modified).to be_a(DateTime)
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      expect(@instance.metadata).to be_a(Hash)
    end
  end

end
