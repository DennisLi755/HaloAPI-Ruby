# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Clients < Base
      # GET /Client - List of Clients
      def list(params = {})
        list_resource('Client', params)
      end

      # GET /Client/{id} - Get a specific Client
      def get_client(id, params = {})
        get_resource('Client', id, params)
      end

      # POST /Client - Create a new Client
      def create_client(data)
        create_resource('Client', data)
      end

      # PUT /Client/{id} - Update a Client
      def update_client(id, data)
        update_resource('Client', id, data)
      end

      # DELETE /Client/{id} - Delete a Client
      def delete_client(id)
        delete_resource('Client', id)
      end

      # GET /Client/me - Get current Client information
      def me(params = {})
        get(resource_path('Client', nil, 'me'), params)
      end

      # GET /Client/NewAccountsId - Get new accounts ID
      def new_accounts_id(params = {})
        get(resource_path('Client', nil, 'NewAccountsId'), params)
      end

      # POST /Client/PaymentMethodUpdate - Update payment method
      def update_payment_method(data)
        post(resource_path('Client', nil, 'PaymentMethodUpdate'), data)
      end

      # Client Cache methods
      # GET /ClientCache - Get Client cache
      def cache(params = {})
        get('/ClientCache', params)
      end

      # Client Contract methods
      # GET /ClientContract - List Client contracts
      def contracts(params = {})
        get('/ClientContract', params)
      end

      # GET /ClientContract/{id} - Get specific Client contract
      def contract(id, params = {})
        get("/ClientContract/#{id}", params)
      end

      # POST /ClientContract - Create Client contract
      def create_contract(data)
        post('/ClientContract', data)
      end

      # PUT /ClientContract/{id} - Update Client contract
      def update_contract(id, data)
        put("/ClientContract/#{id}", data)
      end

      # DELETE /ClientContract/{id} - Delete Client contract
      def delete_contract(id)
        delete("/ClientContract/#{id}")
      end

      # POST /ClientContract/Approval - Client contract approval
      def contract_approval(data)
        post('/ClientContract/Approval', data)
      end

      # GET /ClientContract/NextRef - Get next contract reference
      def next_contract_ref(params = {})
        get('/ClientContract/NextRef', params)
      end

      # Client Prepay methods
      # GET /ClientPrepay - List Client prepayments
      def prepayments(params = {})
        get('/ClientPrepay', params)
      end

      # GET /ClientPrepay/{id} - Get specific Client prepayment
      def prepayment(id, params = {})
        get("/ClientPrepay/#{id}", params)
      end

      # POST /ClientPrepay - Create Client prepayment
      def create_prepayment(data)
        post('/ClientPrepay', data)
      end

      # PUT /ClientPrepay/{id} - Update Client prepayment
      def update_prepayment(id, data)
        put("/ClientPrepay/#{id}", data)
      end

      # DELETE /ClientPrepay/{id} - Delete Client prepayment
      def delete_prepayment(id)
        delete("/ClientPrepay/#{id}")
      end
    end
  end
end
