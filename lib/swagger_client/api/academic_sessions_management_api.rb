=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module SwaggerClient
  class AcademicSessionsManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # The REST read request message for the getAcademicSession() API call.
    # To read, get, a specific academic session.
    # @param sourced_id The unique identifier for this academic session.
    # @param [Hash] opts the optional parameters
    # @return [SingleAcademicSessionType]
    def get_academic_session(sourced_id, opts = {})
      data, _status_code, _headers = get_academic_session_with_http_info(sourced_id, opts)
      data
    end

    # The REST read request message for the getAcademicSession() API call.
    # To read, get, a specific academic session.
    # @param sourced_id The unique identifier for this academic session.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleAcademicSessionType, Integer, Hash)>] SingleAcademicSessionType data, response status code and response headers
    def get_academic_session_with_http_info(sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AcademicSessionsManagementApi.get_academic_session ...'
      end
      # verify the required parameter 'sourced_id' is set
      if @api_client.config.client_side_validation && sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'sourced_id' when calling AcademicSessionsManagementApi.get_academic_session"
      end
      # resource path
      local_var_path = '/academicSessions/{sourcedId}'.sub('{' + 'sourcedId' + '}', sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SingleAcademicSessionType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AcademicSessionsManagementApi#get_academic_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getAcademicSessions() API call.
    # To read, get, a collection of academic sessions i.e. all academic sessions.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [MultipleAcademicSessionsType]
    def get_academic_sessions(opts = {})
      data, _status_code, _headers = get_academic_sessions_with_http_info(opts)
      data
    end

    # The REST read request message for the getAcademicSessions() API call.
    # To read, get, a collection of academic sessions i.e. all academic sessions.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(MultipleAcademicSessionsType, Integer, Hash)>] MultipleAcademicSessionsType data, response status code and response headers
    def get_academic_sessions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AcademicSessionsManagementApi.get_academic_sessions ...'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/academicSessions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'MultipleAcademicSessionsType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AcademicSessionsManagementApi#get_academic_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
