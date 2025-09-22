# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Agents
    class Agents < Base
      # GET /Agent - List of Agents
      def agents(params = {})
        list_resource('Agent', params)
      end

      # GET /Agent/{id} - Get a specific Agent
      def agent(id, params = {})
        get_resource('Agent', id, params)
      end

      # POST /Agent - Create a new Agent
      def create_agent(data)
        create_resource('Agent', data)
      end

      # PUT /Agent/{id} - Update an Agent
      def update_agent(id, data)
        update_resource('Agent', id, data)
      end

      # DELETE /Agent/{id} - Delete an Agent
      def delete_agent(id)
        delete_resource('Agent', id)
      end

      # GET /Agent/me - Get current Agent information
      def me(params = {})
        get_resource('Agent', 'me', params)
      end

      # POST /Agent/ClearCache - Clear Agent cache
      def clear_cache
        post(resource_path('Agent', nil, 'ClearCache'))
      end

      # GET /AgentImage/{id} - Get Agent image
      def image(id)
        get_resource('AgentImage', id)
      end

      # Agent Check-in related methods
      # GET /AgentCheckIn - List Agent check-ins
      def check_ins(params = {})
        list_resource('AgentCheckIn', params)
      end

      # GET /AgentCheckIn/{id} - Get specific Agent check-in
      def check_in(id, params = {})
        get_resource('AgentCheckIn', id, params)
      end

      # POST /AgentCheckIn - Create Agent check-in
      def create_check_in(data)
        create_resource('AgentCheckIn', data)
      end

      # Agent Event Subscription methods
      # GET /AgentEventSubscription - List Agent event subscriptions
      def event_subscriptions(params = {})
        list_resource('AgentEventSubscription', params)
      end

      # GET /AgentEventSubscription/{id} - Get specific Agent event subscription
      def event_subscription(id, params = {})
        get_resource('AgentEventSubscription', id, params)
      end

      # POST /AgentEventSubscription - Create Agent event subscription
      def create_event_subscription(data)
        create_resource('AgentEventSubscription', data)
      end

      # Agent Presence related methods
      # GET /AgentPresenceRule - List Agent presence rules
      def presence_rules(params = {})
        list_resource('AgentPresenceRule', params)
      end

      # GET /AgentPresenceSubscription - List Agent presence subscriptions
      def presence_subscriptions(params = {})
        list_resource('AgentPresenceSubscription', params)
      end

      # GET /AgentPresenceSubscription/{id} - Get specific Agent presence subscription
      def presence_subscription(id, params = {})
        get_resource('AgentPresenceSubscription', id, params)
      end

      # POST /AgentPresenceSubscription - Create Agent presence subscription
      def create_presence_subscription(data)
        create_resource('AgentPresenceSubscription', data)
      end
    end
  end
end
