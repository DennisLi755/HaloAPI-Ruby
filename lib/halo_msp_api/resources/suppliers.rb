# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Suppliers
    class Suppliers < Base
      # GET /Supplier - List of Suppliers
      def suppliers(params = {})
        list_resource('Supplier', params)
      end

      # GET /Supplier/{id} - Get a specific Supplier
      def supplier(id, params = {})
        get_resource('Supplier', id, params)
      end

      # POST /Supplier - Create a new Supplier
      def create_supplier(data)
        create_resource('Supplier', data)
      end

      # PUT /Supplier/{id} - Update a Supplier
      def update_supplier(id, data)
        update_resource('Supplier', id, data)
      end

      # DELETE /Supplier/{id} - Delete a Supplier
      def delete_supplier(id)
        delete_resource('Supplier', id)
      end

      # Supplier Contract methods
      # GET /SupplierContract - List Supplier contracts
      def contracts(params = {})
        list_resource('SupplierContract', params)
      end

      # GET /SupplierContract/{id} - Get specific Supplier contract
      def contract(id, params = {})
        get_resource('SupplierContract', id, params)
      end

      # POST /SupplierContract - Create Supplier contract
      def create_contract(data)
        create_resource('SupplierContract', data)
      end

      # PUT /SupplierContract/{id} - Update Supplier contract
      def update_contract(id, data)
        update_resource('SupplierContract', id, data)
      end

      # DELETE /SupplierContract/{id} - Delete Supplier contract
      def delete_contract(id)
        delete_resource('SupplierContract', id)
      end
    end
  end
end
