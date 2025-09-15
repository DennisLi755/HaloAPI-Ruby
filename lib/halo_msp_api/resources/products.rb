# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Products < Base
      # GET /Contracts - List of Products
      def list(params = {})
        list_resource('Item', params)
      end

      # GET /Product/{id} - Get a specific Product
      def get_product(id, params = {})
        get_resource('Item', id, params)
      end

      # POST /Product - Create a new Product
      def create_product(data)
        create_resource('Item', data)
      end

      # PUT /Product/{id} - Update a Product
      def update_product(id, data)
        update_resource('Item', id, data)
      end

      # DELETE /Product/{id} - Delete a Product
      def delete_product(id)
        delete_resource('Item', id)
      end
    end
  end
end
