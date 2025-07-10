# frozen_string_literal: true

module HaloApi
  module Resources
    class Webhooks < Base
      # GET /Webhook - List of Webhooks
      def list(params = {})
        list_resource("Webhook", params)
      end

      # GET /Webhook/{id} - Get a specific Webhook
      def get(id, params = {})
        get_resource("Webhook", id, params)
      end

      # POST /Webhook - Create a new Webhook
      def create(data)
        create_resource("Webhook", data)
      end

      # PUT /Webhook/{id} - Update a Webhook
      def update(id, data)
        update_resource("Webhook", id, data)
      end

      # DELETE /Webhook/{id} - Delete a Webhook
      def delete(id)
        delete_resource("Webhook", id)
      end

      # POST /Webhook/test - Test a Webhook
      def test(data)
        post(resource_path("Webhook", nil, "test"), data)
      end

      # Webhook Event methods
      # GET /WebhookEvent - List Webhook events
      def events(params = {})
        get("/WebhookEvent", params)
      end

      # GET /WebhookEvent/{id} - Get specific Webhook event
      def event(id, params = {})
        get("/WebhookEvent/#{id}", params)
      end

      # POST /WebhookEvent - Create Webhook event
      def create_event(data)
        post("/WebhookEvent", data)
      end

      # PUT /WebhookEvent/{id} - Update Webhook event
      def update_event(id, data)
        put("/WebhookEvent/#{id}", data)
      end

      # DELETE /WebhookEvent/{id} - Delete Webhook event
      def delete_event(id)
        delete("/WebhookEvent/#{id}")
      end

      # Webhook Subscription methods
      # GET /WebhookSubscription - List Webhook subscriptions
      def subscriptions(params = {})
        get("/WebhookSubscription", params)
      end

      # GET /WebhookSubscription/{id} - Get specific Webhook subscription
      def subscription(id, params = {})
        get("/WebhookSubscription/#{id}", params)
      end

      # POST /WebhookSubscription - Create Webhook subscription
      def create_subscription(data)
        post("/WebhookSubscription", data)
      end

      # PUT /WebhookSubscription/{id} - Update Webhook subscription
      def update_subscription(id, data)
        put("/WebhookSubscription/#{id}", data)
      end

      # DELETE /WebhookSubscription/{id} - Delete Webhook subscription
      def delete_subscription(id)
        delete("/WebhookSubscription/#{id}")
      end
    end
  end
end
