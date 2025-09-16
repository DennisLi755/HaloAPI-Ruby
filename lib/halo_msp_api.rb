# frozen_string_literal: true

require_relative 'halo_msp_api/version'
require_relative 'halo_msp_api/client'
require_relative 'halo_msp_api/configuration'
require_relative 'halo_msp_api/error'

# Core resource modules
require_relative 'halo_msp_api/resources/base'
require_relative 'halo_msp_api/resources/actions'
require_relative 'halo_msp_api/resources/agents'
require_relative 'halo_msp_api/resources/appointments'
require_relative 'halo_msp_api/resources/assets'
require_relative 'halo_msp_api/resources/clients'
require_relative 'halo_msp_api/resources/contracts'
require_relative 'halo_msp_api/resources/integrations'
require_relative 'halo_msp_api/resources/invoices'
require_relative 'halo_msp_api/resources/knowledge_base'
require_relative 'halo_msp_api/resources/organisations'
require_relative 'halo_msp_api/resources/products'
require_relative 'halo_msp_api/resources/purchase_orders'
require_relative 'halo_msp_api/resources/quotations'
require_relative 'halo_msp_api/resources/reports'
require_relative 'halo_msp_api/resources/sales_orders'
require_relative 'halo_msp_api/resources/services'
require_relative 'halo_msp_api/resources/slas'
require_relative 'halo_msp_api/resources/suppliers'
require_relative 'halo_msp_api/resources/tickets'
require_relative 'halo_msp_api/resources/users'
require_relative 'halo_msp_api/resources/webhooks'

# Main Halo MSP API module
module HaloMspApi
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
