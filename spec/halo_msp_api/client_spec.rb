# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
RSpec.describe HaloMspApi::Client do
  let(:configuration) do
    HaloMspApi::Configuration.new.tap do |config|
      config.base_url = 'https://test.haloitsm.com/api'
      config.client_id = 'test_client_id'
      config.client_secret = 'test_client_secret'
    end
  end

  let(:client) { described_class.new(configuration) }

  describe '#initialize' do
    it 'sets the configuration' do
      expect(client.configuration).to eq(configuration)
    end

    it 'initializes connection' do
      expect(client.connection).to be_a(Faraday::Connection)
    end
  end

  describe 'resource accessors' do
    it 'provides access to actions resource' do
      expect(client.actions).to be_a(HaloMspApi::Resources::Actions)
    end

    it 'provides access to agents resource' do
      expect(client.agents).to be_a(HaloMspApi::Resources::Agents)
    end

    it 'provides access to tickets resource' do
      expect(client.tickets).to be_a(HaloMspApi::Resources::Tickets)
    end

    it 'provides access to users resource' do
      expect(client.users).to be_a(HaloMspApi::Resources::Users)
    end

    it 'provides access to assets resource' do
      expect(client.assets).to be_a(HaloMspApi::Resources::Assets)
    end

    it 'provides access to clients resource' do
      expect(client.clients).to be_a(HaloMspApi::Resources::Clients)
    end

    it 'provides access to invoices resource' do
      expect(client.invoices).to be_a(HaloMspApi::Resources::Invoices)
    end

    it 'provides access to reports resource' do
      expect(client.reports).to be_a(HaloMspApi::Resources::Reports)
    end

    it 'provides access to integrations resource' do
      expect(client.integrations).to be_a(HaloMspApi::Resources::Integrations)
    end
  end

  describe 'HTTP methods', :vcr do
    let(:mock_connection) { instance_double(Faraday::Connection) }
    let(:mock_response) { instance_double(Faraday::Response) }
    let(:mock_request) { instance_double(Faraday::Request) }

    before do
      # Set up mock connection
      allow(client).to receive(:connection).and_return(mock_connection)
      allow(client).to receive(:ensure_authenticated!).and_return(true)

      # Set up mock request
      allow(mock_request).to receive(:url)
      allow(mock_request).to receive(:headers).and_return({})
      allow(mock_request).to receive(:body=)
      allow(mock_request).to receive(:params=)

      # Set up mock responses
      allow(mock_response).to receive(:status).and_return(200)
      allow(mock_response).to receive(:body).and_return({ success: true }.to_json)
    end

    describe '#get' do
      it 'makes GET requests' do
        expect(mock_connection).to receive(:get).and_yield(mock_request).and_return(mock_response)
        response = client.get('/test')
        expect(response).to eq({ 'success' => true })
      end
    end

    describe '#post' do
      it 'makes POST requests' do
        expect(mock_connection).to receive(:post).and_yield(mock_request).and_return(mock_response)
        response = client.post('/test', { data: 'test' })
        expect(response).to eq({ 'success' => true })
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
