# frozen_string_literal: true

module HaloApi
  module Resources
    class Organisations < Base
      # GET /Organisation - List of Organisations
      def list(params = {})
        list_resource("Organisation", params)
      end

      # GET /Organisation/{id} - Get a specific Organisation
      def get(id, params = {})
        get_resource("Organisation", id, params)
      end

      # POST /Organisation - Create a new Organisation
      def create(data)
        create_resource("Organisation", data)
      end

      # PUT /Organisation/{id} - Update an Organisation
      def update(id, data)
        update_resource("Organisation", id, data)
      end

      # DELETE /Organisation/{id} - Delete an Organisation
      def delete(id)
        delete_resource("Organisation", id)
      end
    end
  end
end
