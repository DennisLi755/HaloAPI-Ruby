# frozen_string_literal: true

module HaloMspApi
  module Resources
    class SalesOrders < Base
      # GET /SalesOrder - List of Sales Orders
      def list(params = {})
        list_resource("SalesOrder", params)
      end

      # GET /SalesOrder/{id} - Get a specific Sales Order
      def get(id, params = {})
        get_resource("SalesOrder", id, params)
      end

      # POST /SalesOrder - Create a new Sales Order
      def create(data)
        create_resource("SalesOrder", data)
      end

      # PUT /SalesOrder/{id} - Update a Sales Order
      def update(id, data)
        update_resource("SalesOrder", id, data)
      end

      # DELETE /SalesOrder/{id} - Delete a Sales Order
      def delete(id)
        delete_resource("SalesOrder", id)
      end

      # POST /SalesOrder/Approval - Sales Order approval
      def approval(data)
        post(resource_path("SalesOrder", nil, "Approval"), data)
      end

      # GET /SalesOrder/Lines - Get Sales Order lines
      def lines(params = {})
        get(resource_path("SalesOrder", nil, "Lines"), params)
      end

      # GET /SalesOrder/NextRef - Get next Sales Order reference
      def next_ref(params = {})
        get(resource_path("SalesOrder", nil, "NextRef"), params)
      end

      # POST /SalesOrder/updatelines - Update Sales Order lines
      def update_lines(data)
        post(resource_path("SalesOrder", nil, "updatelines"), data)
      end

      # GET /SalesOrder/View - Get Sales Order view
      def view(params = {})
        get(resource_path("SalesOrder", nil, "View"), params)
      end
    end
  end
end
