# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Suppliers < Base
      # GET /Supplier - List of Suppliers
      def list(params = {})
        list_resource("Supplier", params)
      end

      # GET /Supplier/{id} - Get a specific Supplier
      def get(id, params = {})
        get_resource("Supplier", id, params)
      end

      # POST /Supplier - Create a new Supplier
      def create(data)
        create_resource("Supplier", data)
      end

      # PUT /Supplier/{id} - Update a Supplier
      def update(id, data)
        update_resource("Supplier", id, data)
      end

      # DELETE /Supplier/{id} - Delete a Supplier
      def delete(id)
        delete_resource("Supplier", id)
      end

      # Supplier Contract methods
      # GET /SupplierContract - List Supplier contracts
      def contracts(params = {})
        get("/SupplierContract", params)
      end

      # GET /SupplierContract/{id} - Get specific Supplier contract
      def contract(id, params = {})
        get("/SupplierContract/#{id}", params)
      end

      # POST /SupplierContract - Create Supplier contract
      def create_contract(data)
        post("/SupplierContract", data)
      end

      # PUT /SupplierContract/{id} - Update Supplier contract
      def update_contract(id, data)
        put("/SupplierContract/#{id}", data)
      end

      # DELETE /SupplierContract/{id} - Delete Supplier contract
      def delete_contract(id)
        delete("/SupplierContract/#{id}")
      end
    end
  end
end
