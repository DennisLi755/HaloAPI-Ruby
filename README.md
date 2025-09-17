# HaloMspApi Ruby Gem

[![Gem Version](https://img.shields.io/gem/v/halo_msp_api)](https://rubygems.org/gems/halo_msp_api)

A comprehensive Ruby API wrapper for the Halo ITSM, HaloPSA and HaloCRM REST API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'halo_msp_api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install halo_msp_api

## Configuration

Configure the gem with your Halo API credentials:

```ruby
HaloMspApi.configure do |config|
  config.base_url = "https://your-halo-instance.haloitsm.com/api"
  config.client_id = "your_client_id"
  config.client_secret = "your_client_secret"
  config.tenant = "your_tenant" # Optional
  config.timeout = 30 # Optional, default is 30 seconds
  config.retries = 3 # Optional, default is 3 retries
end
```

## Usage

### Basic Usage

```ruby
# Initialize client
client = HaloMspApi.client

# Or create a new client with custom configuration
config = HaloMspApi::Configuration.new
config.base_url = "https://your-instance.haloitsm.com/api"
config.client_id = "your_client_id"
config.client_secret = "your_client_secret"
client = HaloApi::Client.new(config)
```

### Working with Tickets

```ruby
# List all tickets
tickets = client.tickets.list

# Get a specific ticket
ticket = client.tickets.get(123)

# Create a new ticket
new_ticket = client.tickets.create({
  summary: "New ticket",
  details: "Ticket description",
  tickettype_id: 1,
  client_id: 1
})

# Update a ticket
client.tickets.update(123, { summary: "Updated summary" })

# Delete a ticket
client.tickets.delete(123)
```

### Working with Users

```ruby
# List all users
users = client.users.list

# Get current user
current_user = client.users.me

# Create a new user
new_user = client.users.create({
  name: "John Doe",
  emailaddress: "john@example.com"
})
```

### Working with Assets

```ruby
# List all assets
assets = client.assets.list

# Get a specific asset
asset = client.assets.get(123)

# Create a new asset
new_asset = client.assets.create({
  inventory_number: "ASSET001",
  assettype_id: 1
})
```

### Working with Clients

```ruby
# List all clients
clients = client.clients.list

# Get a specific client
client_record = client.clients.get(123)

# Create a new client
new_client = client.clients.create({
  name: "ACME Corp",
  website: "https://acme.com"
})
```

### Working with Invoices

```ruby
# List all invoices
invoices = client.invoices.list

# Get a specific invoice
invoice = client.invoices.get(123)

# Create a new invoice
new_invoice = client.invoices.create({
  client_id: 1,
  invoicedate: "2023-01-01"
})

# Get invoice PDF
pdf_data = client.invoices.pdf(123)
```

### Working with Reports

```ruby
# List all reports
reports = client.reports.list

# Get a specific report
report = client.reports.get(123)

# Get report data
report_data = client.reports.data("published_report_id")
```

### Working with Integrations

```ruby
# Get Azure AD data
azure_data = client.integrations.get_azure_ad

# Get Slack data
slack_data = client.integrations.get_slack

# Import Jira data
client.integrations.import_jira(jira_data)
```

## API Resources

The gem provides access to the following Halo API resources:

### Core Business Objects
- **Actions** - `client.actions` - Ticket actions and reactions
- **Agents** - `client.agents` - Agent management, check-ins, presence
- **Assets** - `client.assets` - Asset management, groups, software, types
- **Tickets** - `client.tickets` - Comprehensive ticket management
- **Users** - `client.users` - User management, preferences, roles
- **Clients** - `client.clients` - Client management, contracts, prepayments
- **Organisations** - `client.organisations` - Organization management

### Financial Management
- **Invoices** - `client.invoices` - Invoice management, payments, recurring invoices
- **Purchase Orders** - `client.purchase_orders` - PO management, approvals, lines
- **Quotations** - `client.quotations` - Quote management, approvals
- **Sales Orders** - `client.sales_orders` - Sales order management
- **Suppliers** - `client.suppliers` - Supplier and contract management
- **Products** - `client.products` - Product management

### Service Management
- **Appointments** - `client.appointments` - Scheduling and availability
- **Services** - `client.services` - Service management, availability, categories
- **SLAs** - `client.slas` - SLA policies and targets

### Knowledge & Communication
- **Knowledge Base** - `client.knowledge_base` - KB articles, categories, keywords
- **Webhooks** - `client.webhooks` - Webhook management and subscriptions

### Reporting & Analytics
- **Reports** - `client.reports` - Reporting, bookmarks, repositories

### Integration Services
- **Integrations** - `client.integrations` - Third-party integration support (Azure, Slack, Jira, etc.)

## Error Handling

The gem provides specific error classes for different types of API errors:

```ruby
begin
  ticket = client.tickets.get(999999)
rescue HaloMspApi::NotFoundError
  puts "Ticket not found"
rescue HaloMspApi::AuthenticationError
  puts "Authentication failed"
rescue HaloMspApi::AuthorizationError
  puts "Access forbidden"
rescue HaloMspApi::ValidationError => e
  puts "Validation error: #{e.message}"
rescue HaloMspApi::RateLimitError
  puts "Rate limit exceeded"
rescue HaloMspApi::ServerError
  puts "Server error"
rescue HaloMspApi::APIError => e
  puts "API error: #{e.message} (Status: #{e.status_code})"
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evosecurity/HaloAPI-Ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rspec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).
