# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Webhooks
    class Webhooks < Base
      # GET /Webhook - List of Webhooks
      def webhooks(params = {})
        list_resource('Webhook', params)
      end

      # GET /Webhook/{id} - Get a specific Webhook
      def webhook(id, params = {})
        get_resource('Webhook', id, params)
      end

      # POST /Webhook - Create a new Webhook
      def create_webhook(data)
        create_resource('Webhook', data)
      end

      # PUT /Webhook/{id} - Update a Webhook
      def update_webhook(id, data)
        update_resource('Webhook', id, data)
      end

      # DELETE /Webhook/{id} - Delete a Webhook
      def delete_webhook(id)
        delete_resource('Webhook', id)
      end

      # POST /Webhook/test - Test a Webhook
      def test(data)
        post(resource_path('Webhook', nil, 'test'), data)
      end

      # Webhook Event methods
      # GET /WebhookEvent - List Webhook events
      def events(params = {})
        list_resource('WebhookEvent', params)
      end

      # GET /WebhookEvent/{id} - Get specific Webhook event
      def event(id, params = {})
        get_resource('WebhookEvent', id, params)
      end

      # POST /WebhookEvent - Create Webhook event
      def create_event(data)
        create_resource('WebhookEvent', data)
      end

      # PUT /WebhookEvent/{id} - Update Webhook event
      def update_event(id, data)
        update_resource('WebhookEvent', id, data)
      end

      # DELETE /WebhookEvent/{id} - Delete Webhook event
      def delete_event(id)
        delete_resource('WebhookEvent', id)
      end

      # Webhook Subscription methods
      # GET /WebhookSubscription - List Webhook subscriptions
      def subscriptions(params = {})
        list_resource('WebhookSubscription', params)
      end

      # GET /WebhookSubscription/{id} - Get specific Webhook subscription
      def subscription(id, params = {})
        get_resource('WebhookSubscription', id, params)
      end

      # POST /WebhookSubscription - Create Webhook subscription
      def create_subscription(data)
        create_resource('WebhookSubscription', data)
      end

      # PUT /WebhookSubscription/{id} - Update Webhook subscription
      def update_subscription(id, data)
        update_resource('WebhookSubscription', id, data)
      end

      # DELETE /WebhookSubscription/{id} - Delete Webhook subscription
      def delete_subscription(id)
        delete_resource('WebhookSubscription', id)
      end
    end
  end
end
