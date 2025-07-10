# frozen_string_literal: true

require "faraday"
require "faraday/retry"
require "json"

module HaloApi
  class Client
    attr_reader :configuration, :connection

    def initialize(configuration = nil)
      @configuration = configuration || HaloApi.configuration
      raise ConfigurationError, "Configuration is required" unless @configuration&.valid?

      @connection = build_connection
      @access_token = nil
      @token_expires_at = nil
    end

    # Resource accessors
    def actions
      @actions ||= Resources::Actions.new(self)
    end

    def agents
      @agents ||= Resources::Agents.new(self)
    end

    def appointments
      @appointments ||= Resources::Appointments.new(self)
    end

    def assets
      @assets ||= Resources::Assets.new(self)
    end

    def clients
      @clients ||= Resources::Clients.new(self)
    end

    def integrations
      @integrations ||= Resources::Integrations.new(self)
    end

    def invoices
      @invoices ||= Resources::Invoices.new(self)
    end

    def knowledge_base
      @knowledge_base ||= Resources::KnowledgeBase.new(self)
    end

    def organisations
      @organisations ||= Resources::Organisations.new(self)
    end

    def purchase_orders
      @purchase_orders ||= Resources::PurchaseOrders.new(self)
    end

    def quotations
      @quotations ||= Resources::Quotations.new(self)
    end

    def reports
      @reports ||= Resources::Reports.new(self)
    end

    def services
      @services ||= Resources::Services.new(self)
    end

    def tickets
      @tickets ||= Resources::Tickets.new(self)
    end

    def users
      @users ||= Resources::Users.new(self)
    end

    def sales_orders
      @sales_orders ||= Resources::SalesOrders.new(self)
    end

    def slas
      @slas ||= Resources::Slas.new(self)
    end

    def suppliers
      @suppliers ||= Resources::Suppliers.new(self)
    end

    def webhooks
      @webhooks ||= Resources::Webhooks.new(self)
    end

    # HTTP methods
    def get(path, params = {})
      request(:get, path, params)
    end

    def post(path, body = {})
      request(:post, path, body)
    end

    def put(path, body = {})
      request(:put, path, body)
    end

    def patch(path, body = {})
      request(:patch, path, body)
    end

    def delete(path)
      request(:delete, path)
    end

    private

    def request(method, path, data = {})
      ensure_authenticated!

      response = connection.send(method) do |req|
        req.url path
        req.headers["Authorization"] = "Bearer #{@access_token}"
        req.headers["Content-Type"] = "application/json"

        if %i[post put patch].include?(method) && !data.empty?
          req.body = data.to_json
        elsif method == :get && !data.empty?
          req.params = data
        end
      end

      handle_response(response)
    rescue Faraday::TimeoutError
      raise TimeoutError, "Request timed out"
    rescue Faraday::ConnectionFailed
      raise ConnectionError, "Connection failed"
    end

    def handle_response(response)
      case response.status
      when 200..299
        parse_response(response)
      when 401
        raise AuthenticationError, "Authentication failed"
      when 403
        raise AuthorizationError, "Access forbidden"
      when 404
        raise NotFoundError, "Resource not found"
      when 422
        raise ValidationError, "Validation error: #{response.body}"
      when 429
        raise RateLimitError, "Rate limit exceeded"
      when 500..599
        raise ServerError, "Server error: #{response.status}"
      else
        raise APIError.new("Unexpected response", status_code: response.status, response_body: response.body)
      end
    end

    def parse_response(response)
      return nil if response.body.nil? || response.body.empty?

      JSON.parse(response.body)
    rescue JSON::ParserError
      response.body
    end

    def ensure_authenticated!
      return if token_valid?

      authenticate!
    end

    def token_valid?
      @access_token && @token_expires_at && Time.now < @token_expires_at
    end

    def authenticate!
      auth_params = {
        grant_type: "client_credentials",
        client_id: configuration.client_id,
        client_secret: configuration.client_secret,
        scope: "all"
      }
      
      # Include tenant if configured (required for multi-tenant instances)
      auth_params[:tenant] = configuration.tenant if configuration.tenant
      
      auth_response = connection.post("/auth/token") do |req|
        req.headers["Content-Type"] = "application/x-www-form-urlencoded"
        req.body = URI.encode_www_form(auth_params)
      end

      if auth_response.status == 200
        token_data = JSON.parse(auth_response.body)
        @access_token = token_data["access_token"]
        @token_expires_at = Time.now + token_data["expires_in"].to_i
      else
        raise AuthenticationError, "Failed to authenticate: #{auth_response.body}"
      end
    rescue JSON::ParserError
      raise AuthenticationError, "Invalid authentication response"
    end

    def build_connection
      Faraday.new(url: configuration.base_url) do |conn|
        conn.request :retry, max: configuration.retries
        conn.options.timeout = configuration.timeout
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
