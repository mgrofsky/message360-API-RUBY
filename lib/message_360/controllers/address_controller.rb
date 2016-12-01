# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class AddressController < BaseController
    @@instance = AddressController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.
    # @param [String] name Required parameter: Name of user
    # @param [String] address Required parameter: Address of user.
    # @param [String] country Required parameter: Must be a 2 letter country short-name code (ISO 3166)
    # @param [String] state Required parameter: Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters.
    # @param [String] city Required parameter: City Name.
    # @param [String] zip Required parameter: Zip code of city.
    # @param [String] description Optional parameter: Description of addresses.
    # @param [String] email Optional parameter: Email Id of user.
    # @param [String] phone Optional parameter: Phone number of user.
    # @param [String] response_type Optional parameter: Response Type Either json or xml
    # @return String response from the API call
    def create_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'name' => options['name'],
        'address' => options['address'],
        'country' => options['country'],
        'state' => options['state'],
        'city' => options['city'],
        'zip' => options['zip']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/address/createaddress.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'name' => options['name'],
        'address' => options['address'],
        'country' => options['country'],
        'state' => options['state'],
        'city' => options['city'],
        'zip' => options['zip'],
        'description' => options['description'],
        'email' => options['email'],
        'phone' => options['phone']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # To delete Address to your address book
    # @param [String] addressid Required parameter: The identifier of the address to be deleted.
    # @param [String] response_type Optional parameter: Response type either json or xml
    # @return String response from the API call
    def create_delete_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'addressid' => options['addressid']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/address/deleteaddress.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'addressid' => options['addressid']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Validates an address given.
    # @param [String] addressid Required parameter: The identifier of the address to be verified.
    # @param [String] response_type Optional parameter: Response type either JSON or xml
    # @return String response from the API call
    def create_verify_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'addressid' => options['addressid']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/address/verifyaddress.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'addressid' => options['addressid']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List All Address 
    # @param [Integer] page Optional parameter: Return requested # of items starting the value, default=0, must be an integer
    # @param [Integer] page_size Optional parameter: How many results to return, default=10, max 100, must be an integer
    # @param [String] address_id Optional parameter: addresses Sid
    # @param [String] date_created Optional parameter: date created address.
    # @param [String] response_type Optional parameter: Response Type either json or xml
    # @return String response from the API call
    def create_list_address(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/address/listaddress.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'page' => options['page'],
        'pageSize' => options['page_size'],
        'addressId' => options['address_id'],
        'dateCreated' => options['date_created']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Address Specific address Book by providing the address id
    # @param [String] address_id Required parameter: The identifier of the address to be retrieved.
    # @param [String] response_type Optional parameter: Response Type either json or xml
    # @return String response from the API call
    def create_view_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'address_id' => options['address_id']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/address/viewaddress.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'addressId' => options['address_id']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end