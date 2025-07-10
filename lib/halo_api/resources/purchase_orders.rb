# frozen_string_literal: true

module HaloApi
  module Resources
    class PurchaseOrders < Base
      # GET /PurchaseOrder - List of Purchase Orders
      def list(params = {})
        list_resource("PurchaseOrder", params)
      end

      # GET /PurchaseOrder/{id} - Get a specific Purchase Order
      def get(id, params = {})
        get_resource("PurchaseOrder", id, params)
      end

      # POST /PurchaseOrder - Create a new Purchase Order
      def create(data)
        create_resource("PurchaseOrder", data)
      end

      # PUT /PurchaseOrder/{id} - Update a Purchase Order
      def update(id, data)
        update_resource("PurchaseOrder", id, data)
      end

      # DELETE /PurchaseOrder/{id} - Delete a Purchase Order
      def delete(id)
        delete_resource("PurchaseOrder", id)
      end

      # POST /PurchaseOrder/Approval - Purchase Order approval
      def approval(data)
        post(resource_path("PurchaseOrder", nil, "Approval"), data)
      end

      # GET /PurchaseOrder/Lines - Get Purchase Order lines
      def lines(params = {})
        get(resource_path("PurchaseOrder", nil, "Lines"), params)
      end

      # GET /PurchaseOrder/NextRef - Get next Purchase Order reference
      def next_ref(params = {})
        get(resource_path("PurchaseOrder", nil, "NextRef"), params)
      end

      # POST /PurchaseOrder/updatelines - Update Purchase Order lines
      def update_lines(data)
        post(resource_path("PurchaseOrder", nil, "updatelines"), data)
      end

      # GET /PurchaseOrder/View - Get Purchase Order view
      def view(params = {})
        get(resource_path("PurchaseOrder", nil, "View"), params)
      end
    end
  end
end
