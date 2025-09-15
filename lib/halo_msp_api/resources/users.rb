# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Users < Base
      # GET /Users - List of Users
      def list(params = {})
        list_resource('Users', params)
      end

      # GET /Users/{id} - Get a specific User
      def get_users(id, params = {})
        get_resource('Users', id, params)
      end

      # POST /Users - Create a new User
      def create_users(data)
        create_resource('Users', data)
      end

      # PUT /Users/{id} - Update a User
      def update_users(id, data)
        update_resource('Users', id, data)
      end

      # DELETE /Users/{id} - Delete a User
      def delete_users(id)
        delete_resource('Users', id)
      end

      # GET /Users/prefs - Get User preferences
      def preferences(params = {})
        get(resource_path('Users', nil, 'prefs'), params)
      end

      # POST /Users/prefs - Update User preferences
      def update_preferences(data)
        post(resource_path('Users', nil, 'prefs'), data)
      end

      # User Change methods
      # GET /UserChange - List User changes
      def changes(params = {})
        get('/UserChange', params)
      end

      # POST /UserChange - Create User change
      def create_change(data)
        post('/UserChange', data)
      end

      # User Roles methods
      # GET /UserRoles - List User roles
      def roles(params = {})
        get('/UserRoles', params)
      end

      # GET /UserRoles/{id} - Get specific User role
      def role(id, params = {})
        get("/UserRoles/#{id}", params)
      end

      # POST /UserRoles - Create User role
      def create_role(data)
        post('/UserRoles', data)
      end

      # PUT /UserRoles/{id} - Update User role
      def update_role(id, data)
        put("/UserRoles/#{id}", data)
      end

      # DELETE /UserRoles/{id} - Delete User role
      def delete_role(id)
        delete("/UserRoles/#{id}")
      end
    end
  end
end
