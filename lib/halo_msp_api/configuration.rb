# frozen_string_literal: true

module HaloMspApi
  class Configuration
    attr_accessor :base_url, :client_id, :client_secret, :tenant, :timeout, :retries

    def initialize
      @base_url = nil
      @client_id = nil
      @client_secret = nil
      @tenant = nil
      @timeout = 30
      @retries = 3
    end

    def valid?
      !base_url.nil? && !client_id.nil? && !client_secret.nil?
    end
  end
end
