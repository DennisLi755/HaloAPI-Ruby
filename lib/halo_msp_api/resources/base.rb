# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Base
      attr_reader :client

      def initialize(client)
        @client = client
      end

      protected

      def get(path, params = {})
        client.get(path, params)
      end

      def post(path, body = {})
        client.post(path, body)
      end

      def put(path, body = {})
        client.put(path, body)
      end

      def patch(path, body = {})
        client.patch(path, body)
      end

      def delete(path)
        client.delete(path)
      end

      # Helper method to build resource path
      def resource_path(resource_name, id = nil, action = nil)
        path = "/#{resource_name}"
        path += "/#{id}" if id
        path += "/#{action}" if action
        path
      end

      # Helper method for list operations with common parameters
      def list_resource(resource_name, params = {})
        get(resource_path(resource_name), params)
      end

      # Helper method for get operations
      def get_resource(resource_name, id, params = {})
        get(resource_path(resource_name, id), params)
      end

      # Helper method for create operations
      def create_resource(resource_name, data)
        post(resource_path(resource_name), data)
      end

      # Helper method for update operations
      def update_resource(resource_name, id, data)
        put(resource_path(resource_name, id), data)
      end

      # Helper method for delete operations
      def delete_resource(resource_name, id)
        delete(resource_path(resource_name, id))
      end
    end
  end
end
