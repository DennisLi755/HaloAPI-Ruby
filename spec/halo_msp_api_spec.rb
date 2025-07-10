# frozen_string_literal: true

require 'halo_msp_api'

RSpec.describe HaloMspApi do
  it "has a version number" do
    expect(HaloMspApi::VERSION).not_to be nil
  end

  describe ".configure" do
    it "yields configuration" do
      expect { |b| HaloMspApi.configure(&b) }.to yield_with_args(HaloMspApi::Configuration)

    end

    it "sets configuration" do
      HaloApi.configure do |config|
        config.base_url = "https://test.haloitsm.com/api"
        config.client_id = "test_client_id"
        config.client_secret = "test_client_secret"
      end

      expect(HaloApi.configuration.base_url).to eq("https://test.haloitsm.com/api")
      expect(HaloApi.configuration.client_id).to eq("test_client_id")
      expect(HaloApi.configuration.client_secret).to eq("test_client_secret")
    end
  end

  describe ".client" do
    before do
      HaloApi.configure do |config|
        config.base_url = "https://test.haloitsm.com/api"
        config.client_id = "test_client_id"
        config.client_secret = "test_client_secret"
      end
    end

    it "returns a client instance" do
      expect(HaloApi.client).to be_a(HaloApi::Client)
    end

    it "uses the global configuration" do
      client = HaloApi.client
      expect(client.configuration.base_url).to eq("https://test.haloitsm.com/api")
    end
  end
end
