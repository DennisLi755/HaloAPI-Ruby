# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Products
    class Products < Base
      # GET /Item - List of Products
      def products(params = {})
        list_resource('Item', params)
      end

      # GET /Item/{id} - Get a specific Product
      def product(id, params = {})
        get_resource('Item', id, params)
      end

      # POST /Item - Create a new Product
      def create_product(data)
        create_resource('Item', data)
      end

      # PUT /Item/{id} - Update a Product
      def update_product(id, data)
        update_resource('Item', id, data)
      end

      # DELETE /Item/{id} - Delete a Product
      def delete_product(id)
        delete_resource('Item', id)
      end
    end
  end
end
