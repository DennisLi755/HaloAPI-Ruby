# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Organisations
    class Organisations < Base
      # GET /Organisation - List of Organisations
      def organisations(params = {})
        list_resource('Organisation', params)
      end

      # GET /Organisation/{id} - Get a specific Organisation
      def organisation(id, params = {})
        get_resource('Organisation', id, params)
      end

      # POST /Organisation - Create a new Organisation
      def create_organisation(data)
        create_resource('Organisation', data)
      end

      # PUT /Organisation/{id} - Update an Organisation
      def update_organisation(id, data)
        update_resource('Organisation', id, data)
      end

      # DELETE /Organisation/{id} - Delete an Organisation
      def delete_organisation(id)
        delete_resource('Organisation', id)
      end
    end
  end
end
