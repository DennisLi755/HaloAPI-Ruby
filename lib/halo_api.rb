# frozen_string_literal: true

require_relative "halo_api/version"
require_relative "halo_api/client"
require_relative "halo_api/configuration"
require_relative "halo_api/error"

# Core resource modules
require_relative "halo_api/resources/base"
require_relative "halo_api/resources/actions"
require_relative "halo_api/resources/agents"
require_relative "halo_api/resources/appointments"
require_relative "halo_api/resources/assets"
require_relative "halo_api/resources/clients"
require_relative "halo_api/resources/integrations"
require_relative "halo_api/resources/invoices"
require_relative "halo_api/resources/knowledge_base"
require_relative "halo_api/resources/organisations"
require_relative "halo_api/resources/purchase_orders"
require_relative "halo_api/resources/quotations"
require_relative "halo_api/resources/reports"
require_relative "halo_api/resources/sales_orders"
require_relative "halo_api/resources/services"
require_relative "halo_api/resources/slas"
require_relative "halo_api/resources/suppliers"
require_relative "halo_api/resources/integrations"

module HaloApi
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  def self.client
    @client ||= Client.new(configuration)
  end
end
