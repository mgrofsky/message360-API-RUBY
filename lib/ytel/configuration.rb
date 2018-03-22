# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      #PRODUCTION: Our message360 production environment.  This is our latest stable release.
      #PREPRODUCTION: Pre-Production environment used to test your code in our beta systems.  There is a good chance nothing will work here.  Don't use it unless instructed by our staff.
      ENVIRONMENT = [PRODUCTION = 0, PREPRODUCTION = 1].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::PRODUCTION

    # The username to use with basic authentication
    @basic_auth_user_name = 'TODO: Replace'

    # The password to use with basic authentication
    @basic_auth_password = 'TODO: Replace'

    # All the environments the SDK can run in.
    @environments = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://api.message360.com/api/v3'
      },
      Environment::PREPRODUCTION => {
        Server::DEFAULT => 'https://api-preprod.message360.com/api/v2'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :basic_auth_user_name
      attr_accessor :basic_auth_password
    end
  end
end