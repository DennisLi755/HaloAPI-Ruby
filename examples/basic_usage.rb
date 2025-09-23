#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'
require 'halo_msp_api'

# Configure the HaloMspApi gem
HaloMspApi.configure do |config|
  config.base_url = ENV['HALO_BASE_URL'] || 'https://your-instance.haloitsm.com/api'
  config.client_id = ENV['HALO_CLIENT_ID'] || 'your_client_id'
  config.client_secret = ENV['HALO_CLIENT_SECRET'] || 'your_client_secret'
  config.tenant = ENV['HALO_TENANT'] # Optional
  config.timeout = 30
  config.retries = 3
end

# Get a client instance
instance = HaloMspApi.client

begin
  puts '=== HaloApi Ruby Gem Example Usage ==='
  puts

  # Example 1: List tickets
  puts '1. Fetching tickets...'
  tickets = instance.tickets.tickets(count: 5)
  puts "Found #{tickets['tickets']&.length || 0} tickets"
  if tickets['tickets']&.any?
    puts 'Ticket summaries:'
    tickets['tickets'].each do |ticket|
      puts "- #{ticket['summary'] || 'Unknown'}"
    end
  end
  puts

  # Example 2: List users
  puts '2. Fetching users...'
  users = instance.users.users(count: 5)
  puts "Found #{users['users']&.length || 0} users"
  if users['users']&.any?
    puts 'User names:'
    users['users'].each do |user|
      puts "- #{user['name'] || 'Unknown'}"
    end
  end
  puts

  # Example 3: List companies
  puts '3. Fetching clients...'
  clients = instance.clients.clients(count: 5)
  puts "Found #{clients['clients']&.length || 0} clients"
  if clients['clients']&.any?
    puts 'Client names:'
    clients['clients'].each do |client_item|
      puts "- #{client_item['name'] || 'Unknown'}"
    end
  end
  puts

  # Example 4: List assets
  puts '4. Fetching assets...'
  assets = instance.assets.assets(count: 5)
  puts "Found #{assets['assets']&.length || 0} assets"
  if assets['assets']&.any?
    puts 'Asset Inventory Number & Client Association:'
    assets['assets'].each do |asset|
      puts "- #{asset['inventory_number'] || 'Unknown'}: #{asset['client_name'] || 'Unknown'}"
    end
  end
  puts

  # Example 5: List invoices
  puts '5. Fetching invoices...'
  invoices = instance.invoices.invoices(count: 5)
  puts "Found #{invoices['invoices']&.length || 0} invoices"
  if invoices['invoices']&.any?
    puts 'Invoice ID and Client Association:'
    invoices['invoices'].each do |invoice|
      puts "- #{invoice['id'] || 'Unknown'}: #{invoice['client_name'] || 'Unknown'}"
    end
  end
  puts

  # Example 6: Get reports
  puts '6. Fetching reports...'
  reports = instance.reports.reports(count: 5)
  puts "Found #{reports['reports']&.length || 0} reports"
  if reports['reports']&.any?
    puts 'Report Names:'
    reports['reports'].each do |report|
      puts "- #{report['name'] || 'Unknown'}"
    end
  end
  puts

  # Example 7: Get contracts
  puts '7. Fetching contracts...'
  contracts = instance.clients.contracts(count: 5)
  puts "Found #{contracts['contracts']&.length || 0} contracts"
  if contracts['contracts']&.any?
    puts 'Contract Client & Active:'
    contracts['contracts'].each do |contract|
      puts "- #{contract['client_name'] || 'Unknown'}: #{contract['active'] || 'Unknown'}"
    end
  end
  puts

  # Example 8: Get products
  puts '8. Fetching products...'
  products = instance.products.products(count: 5)
  puts "Found #{products['items']&.length || 0} products"
  if products['items']&.any?
    puts 'Product Names:'
    products['items'].each do |product|
      puts "- #{product['name'] || 'Unknown'}"
    end
  end
  puts

  puts '9. Listing Statuses'
  statuses = instance.tickets.statuses
  puts "Found #{statuses&.length || 0} statuses"
  puts "First Status: #{statuses.first['name']}"

  puts '=== Example completed successfully! ==='
rescue HaloMspApi::AuthenticationError => e
  puts "Authentication failed: #{e.message}"
  puts 'Please check your client_id and client_secret'
rescue HaloMspApi::AuthorizationError => e
  puts "Authorization failed: #{e.message}"
  puts 'Please check your permissions'
rescue HaloMspApi::APIError => e
  puts "API Error: #{e.message}"
  puts "Status Code: #{e.status_code}" if e.respond_to?(:status_code)
rescue StandardError => e
  puts "Unexpected error: #{e.message}"
  puts e.backtrace.first(5)
end
