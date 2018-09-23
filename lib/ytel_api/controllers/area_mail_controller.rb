# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # AreaMailController
  class AreaMailController < BaseController
    @instance = AreaMailController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Remove an AreaMail object by its AreaMailId.
    # @param [String] areamailid Required parameter: The unique identifier for
    # an AreaMail object.
    # @return String response from the API call
    def create_areamail_delete(areamailid)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/areamail/delete.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'areamailid' => areamailid
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Create a new AreaMail object.
    # @param [String] routes Required parameter: List of routes that AreaMail
    # should be delivered to.  A single route can be either a zipcode or a
    # carrier route.List of routes that AreaMail should be delivered to.  A
    # single route can be either a zipcode or a carrier route. A carrier route
    # is in the form of 92610-C043 where the carrier route is composed of 5
    # numbers for zipcode, 1 letter for carrier route type, and 3 numbers for
    # carrier route code. Delivery can be sent to mutliple routes by separating
    # them with a commas. Valid Values: 92656, 92610-C043
    # @param [String] attachbyid Required parameter: Set an existing areamail by
    # attaching its AreamailId.
    # @param [String] front Required parameter: The front of the AreaMail item
    # to be created. This can be a URL, local file, or an HTML string. Supported
    # file types are PDF, PNG, and JPEG. Back required
    # @param [String] back Required parameter: The back of the AreaMail item to
    # be created. This can be a URL, local file, or an HTML string. Supported
    # file types are PDF, PNG, and JPEG.
    # @param [String] description Optional parameter: A string value to use as a
    # description for this AreaMail item.
    # @param [String] targettype Optional parameter: The delivery location
    # type.
    # @param [String] htmldata Optional parameter: A string value that contains
    # HTML markup.
    # @return String response from the API call
    def create_areamail_create(options = {})
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/areamail/create.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'routes' => options['routes'],
        'attachbyid' => options['attachbyid'],
        'front' => options['front'],
        'back' => options['back'],
        'description' => options['description'],
        'targettype' => options['targettype'],
        'htmldata' => options['htmldata']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve an AreaMail object by its AreaMailId.
    # @param [String] areamailid Required parameter: The unique identifier for
    # an AreaMail object.
    # @return String response from the API call
    def create_areamail_view(areamailid)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/areamail/view.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'areamailid' => areamailid
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve a list of AreaMail objects.
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [String] areamailsid Optional parameter: The unique identifier for
    # an AreaMail object.
    # @param [String] date_created Optional parameter: The date the AreaMail was
    # created.
    # @return String response from the API call
    def create_areamail_lists(options = {})
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/areamail/lists.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'areamailsid' => options['areamailsid'],
        'dateCreated' => options['date_created']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end