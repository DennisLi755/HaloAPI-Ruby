# frozen_string_literal: true

RSpec.describe HaloApi::Client do
  let(:configuration) do
    HaloApi::Configuration.new.tap do |config|
      config.base_url = "https://test.haloitsm.com/api"
      config.client_id = "test_client_id"
      config.client_secret = "test_client_secret"
    end
  end

  let(:client) { described_class.new(configuration) }

  describe "#initialize" do
    it "sets the configuration" do
      expect(client.configuration).to eq(configuration)
    end

    it "initializes connection" do
      expect(client.connection).to be_a(Faraday::Connection)
    end
  end

  describe "resource accessors" do
    it "provides access to actions resource" do
      expect(client.actions).to be_a(HaloApi::Resources::Actions)
    end

    it "provides access to agents resource" do
      expect(client.agents).to be_a(HaloApi::Resources::Agents)
    end

    it "provides access to tickets resource" do
      expect(client.tickets).to be_a(HaloApi::Resources::Tickets)
    end

    it "provides access to users resource" do
      expect(client.users).to be_a(HaloApi::Resources::Users)
    end

    it "provides access to assets resource" do
      expect(client.assets).to be_a(HaloApi::Resources::Assets)
    end

    it "provides access to clients resource" do
      expect(client.clients).to be_a(HaloApi::Resources::Clients)
    end

    it "provides access to invoices resource" do
      expect(client.invoices).to be_a(HaloApi::Resources::Invoices)
    end

    it "provides access to reports resource" do
      expect(client.reports).to be_a(HaloApi::Resources::Reports)
    end

    it "provides access to integrations resource" do
      expect(client.integrations).to be_a(HaloApi::Resources::Integrations)
    end
  end

  describe "HTTP methods", :vcr do
    before do
      stub_request(:post, "https://test.haloitsm.com/api/auth/token")
        .to_return(
          status: 200,
          body: { access_token: "test_token", expires_in: 3600 }.to_json,
          headers: { "Content-Type" => "application/json" }
        )
    end

    describe "#get" do
      it "makes GET requests" do
        stub_request(:get, "https://test.haloitsm.com/api/test")
          .to_return(status: 200, body: { success: true }.to_json)

        response = client.get("/test")
        expect(response).to eq({ "success" => true })
      end
    end

    describe "#post" do
      it "makes POST requests" do
        stub_request(:post, "https://test.haloitsm.com/api/test")
          .with(body: { data: "test" }.to_json)
          .to_return(status: 201, body: { created: true }.to_json)

        response = client.post("/test", { data: "test" })
        expect(response).to eq({ "created" => true })
      end
    end
  end
end
