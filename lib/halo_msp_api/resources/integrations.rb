# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Integrations < Base
      # Integration Data methods - these handle the massive number of third-party integrations
      
      # GET methods for various integrations
      def get_addigy(params = {})
        get("/IntegrationData/Get/Addigy", params)
      end

      def get_amazon_seller(params = {})
        get("/IntegrationData/Get/AmazonSeller", params)
      end

      def get_arrow_sphere(params = {})
        get("/IntegrationData/Get/ArrowSphere", params)
      end

      def get_atera(params = {})
        get("/IntegrationData/Get/Atera", params)
      end

      def get_automate(params = {})
        get("/IntegrationData/Get/Automate", params)
      end

      def get_autotask(params = {})
        get("/IntegrationData/Get/Autotask", params)
      end

      def get_auvik(params = {})
        get("/IntegrationData/Get/Auvik", params)
      end

      def get_avalara(params = {})
        get("/IntegrationData/Get/Avalara", params)
      end

      def get_azure_ad(params = {})
        get("/IntegrationData/Get/AzureAD", params)
      end

      def get_azure_ad_delta(params = {})
        get("/IntegrationData/Get/AzureAD/Delta", params)
      end

      def get_azure_sentinel(params = {})
        get("/IntegrationData/Get/AzureSentinel", params)
      end

      def get_business_central(params = {})
        get("/IntegrationData/Get/BusinessCentral", params)
      end

      def get_confluence(params = {})
        get("/IntegrationData/Get/Confluence", params)
      end

      def get_connectwise(params = {})
        get("/IntegrationData/Get/ConnectWise", params)
      end

      def get_connectwise_control(params = {})
        get("/IntegrationData/Get/ConnectwiseControl", params)
      end

      def get_connectwise_rmm(params = {})
        get("/IntegrationData/Get/ConnectwiseRmm", params)
      end

      def get_datto(params = {})
        get("/IntegrationData/Get/Datto", params)
      end

      def get_datto_commerce(params = {})
        get("/IntegrationData/Get/DattoCommerce", params)
      end

      def get_dynamics_crm(params = {})
        get("/IntegrationData/Get/DynamicsCRM", params)
      end

      def get_dynatrace(params = {})
        get("/IntegrationData/Get/Dynatrace", params)
      end

      def get_exact_online(params = {})
        get("/IntegrationData/Get/ExactOnline", params)
      end

      def get_facebook(params = {})
        get("/IntegrationData/Get/Facebook", params)
      end

      def get_freshdesk(params = {})
        get("/IntegrationData/Get/Freshdesk", params)
      end

      def get_google_business(params = {})
        get("/IntegrationData/Get/GoogleBusiness", params)
      end

      def get_google_workplace(params = {})
        get("/IntegrationData/Get/GoogleWorkplace", params)
      end

      def get_hubspot(params = {})
        get("/IntegrationData/Get/HubSpot", params)
      end

      def get_intune(params = {})
        get("/IntegrationData/Get/Intune", params)
      end

      def get_it_glue(params = {})
        get("/IntegrationData/Get/ITGlue", params)
      end

      def get_jamf(params = {})
        get("/IntegrationData/Get/Jamf", params)
      end

      def get_jira(params = {})
        get("/IntegrationData/Get/Jira", params)
      end

      def get_jira_service_management(params = {})
        get("/IntegrationData/Get/JiraServiceManagement", params)
      end

      def get_lansweeper(params = {})
        get("/IntegrationData/Get/Lansweeper", params)
      end

      def get_microsoft_csp(params = {})
        get("/IntegrationData/Get/MicrosoftCSP", params)
      end

      def get_ninja_rmm(params = {})
        get("/IntegrationData/Get/NinjaRMM", params)
      end

      def get_okta(params = {})
        get("/IntegrationData/Get/Okta", params)
      end

      def get_pager_duty(params = {})
        get("/IntegrationData/Get/PagerDuty", params)
      end

      def get_quickbooks_online(params = {})
        get("/IntegrationData/Get/QuickBooksOnline", params)
      end

      def get_salesforce(params = {})
        get("/IntegrationData/Get/Salesforce", params)
      end

      def get_service_now(params = {})
        get("/IntegrationData/Get/ServiceNow", params)
      end

      def get_shopify(params = {})
        get("/IntegrationData/Get/Shopify", params)
      end

      def get_slack(params = {})
        get("/IntegrationData/Get/Slack", params)
      end

      def get_stripe(params = {})
        get("/IntegrationData/Get/Stripe", params)
      end

      def get_xero(params = {})
        get("/IntegrationData/Get/Xero", params)
      end

      # Import methods for various integrations
      def import_business_central(data)
        post("/IntegrationData/Import/BusinessCentral", data)
      end

      def import_exact_online(data)
        post("/IntegrationData/Import/ExactOnline", data)
      end

      def import_jira(data)
        post("/IntegrationData/Import/Jira", data)
      end

      def import_quickbooks_online(data)
        post("/IntegrationData/Import/QuickBooksOnline", data)
      end

      def import_xero(data)
        post("/IntegrationData/Import/Xero", data)
      end

      # Link methods
      def link_jira(data)
        post("/IntegrationData/Link/Jira", data)
      end

      def unlink_jira(data)
        post("/IntegrationData/Unlink/Jira", data)
      end

      # Search methods
      def search_jira(params = {})
        get("/IntegrationData/Search/Jira", params)
      end

      # Validation methods
      def validate_jira(data)
        post("/IntegrationData/Validate/Jira", data)
      end

      # Integration Configuration methods
      # GET /IntegrationConfiguration - List Integration configurations
      def configurations(params = {})
        get("/IntegrationConfiguration", params)
      end

      # GET /IntegrationConfiguration/{id} - Get specific Integration configuration
      def configuration(id, params = {})
        get("/IntegrationConfiguration/#{id}", params)
      end

      # POST /IntegrationConfiguration - Create Integration configuration
      def create_configuration(data)
        post("/IntegrationConfiguration", data)
      end

      # PUT /IntegrationConfiguration/{id} - Update Integration configuration
      def update_configuration(id, data)
        put("/IntegrationConfiguration/#{id}", data)
      end

      # DELETE /IntegrationConfiguration/{id} - Delete Integration configuration
      def delete_configuration(id)
        delete("/IntegrationConfiguration/#{id}")
      end

      # Integration Error methods
      # GET /IntegrationError - List Integration errors
      def errors(params = {})
        get("/IntegrationError", params)
      end

      # GET /IntegrationError/{id} - Get specific Integration error
      def error(id, params = {})
        get("/IntegrationError/#{id}", params)
      end

      # Integration Request methods
      # GET /IntegrationRequest - List Integration requests
      def requests(params = {})
        get("/IntegrationRequest", params)
      end

      # GET /IntegrationRequest/{id} - Get specific Integration request
      def request(id, params = {})
        get("/IntegrationRequest/#{id}", params)
      end

      # POST /IntegrationRequest - Create Integration request
      def create_request(data)
        post("/IntegrationRequest", data)
      end
    end
  end
end
