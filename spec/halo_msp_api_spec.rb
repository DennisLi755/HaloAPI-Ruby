# frozen_string_literal: true

require 'halo_msp_api'

# rubocop:disable Metrics/BlockLength
RSpec.describe HaloMspApi do
  it 'has a version number' do
    expect(HaloMspApi::VERSION).not_to be nil
  end

  describe '.configure' do
    it 'yields configuration' do
      expect { |b| HaloMspApi.configure(&b) }.to yield_with_args(HaloMspApi::Configuration)
    end

    it 'sets configuration' do
      HaloMspApi.configure do |config|
        config.base_url = 'https://test.haloitsm.com/api'
        config.client_id = 'test_client_id'
        config.client_secret = 'test_client_secret'
      end

      expect(HaloMspApi.configuration.base_url).to eq('https://test.haloitsm.com/api')
      expect(HaloMspApi.configuration.client_id).to eq('test_client_id')
      expect(HaloMspApi.configuration.client_secret).to eq('test_client_secret')
    end
  end

  describe '.client' do
    before do
      HaloMspApi.configure do |config|
        config.base_url = 'https://test.haloitsm.com/api'
        config.client_id = 'test_client_id'
        config.client_secret = 'test_client_secret'
      end
    end

    it 'returns a client instance' do
      expect(HaloMspApi.client).to be_a(HaloMspApi::Client)
    end

    it 'uses the global configuration' do
      client = HaloMspApi.client
      expect(client.configuration.base_url).to eq('https://test.haloitsm.com/api')
    end
  end
end
# rubocop:enable Metrics/BlockLength
