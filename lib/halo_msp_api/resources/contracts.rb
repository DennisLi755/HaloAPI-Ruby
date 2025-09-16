# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Contracts
    class Contracts < Base
      # GET /Contracts - List of Contracts
      def list(params = {})
        list_resource('ClientContract', params)
      end

      # GET /Contract/{id} - Get a specific Contract
      def get_contract(id, params = {})
        get_resource('ClientContract', id, params)
      end

      # POST /Contract - Create a new Contract
      def create_contract(data)
        create_resource('ClientContract', data)
      end

      # PUT /Contract/{id} - Update a Contract
      def update_contract(id, data)
        update_resource('ClientContract', id, data)
      end

      # DELETE /Contract/{id} - Delete a Contract
      def delete_contract(id)
        delete_resource('ClientContract', id)
      end
    end
  end
end
