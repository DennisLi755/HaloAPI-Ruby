# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Services
    class Services < Base
      # GET /Service - List of Services
      def list(params = {})
        list_resource('Service', params)
      end

      # GET /Service/{id} - Get a specific Service
      def get_service(id, params = {})
        get_resource('Service', id, params)
      end

      # POST /Service - Create a new Service
      def create_service(data)
        create_resource('Service', data)
      end

      # PUT /Service/{id} - Update a Service
      def update_service(id, data)
        update_resource('Service', id, data)
      end

      # DELETE /Service/{id} - Delete a Service
      def delete_service(id)
        delete_resource('Service', id)
      end

      # POST /Service/unsubscribe - Unsubscribe from Service
      def unsubscribe(data)
        post(resource_path('Service', nil, 'unsubscribe'), data)
      end

      # Service Availability methods
      # GET /ServiceAvailability - List Service availabilities
      def availabilities(params = {})
        get('/ServiceAvailability', params)
      end

      # GET /ServiceAvailability/{id} - Get specific Service availability
      def availability(id, params = {})
        get("/ServiceAvailability/#{id}", params)
      end

      # POST /ServiceAvailability - Create Service availability
      def create_availability(data)
        post('/ServiceAvailability', data)
      end

      # PUT /ServiceAvailability/{id} - Update Service availability
      def update_availability(id, data)
        put("/ServiceAvailability/#{id}", data)
      end

      # DELETE /ServiceAvailability/{id} - Delete Service availability
      def delete_availability(id)
        delete("/ServiceAvailability/#{id}")
      end

      # Service Category methods
      # GET /ServiceCategory - List Service categories
      def categories(params = {})
        get('/ServiceCategory', params)
      end

      # GET /ServiceCategory/{id} - Get specific Service category
      def category(id, params = {})
        get("/ServiceCategory/#{id}", params)
      end

      # POST /ServiceCategory - Create Service category
      def create_category(data)
        post('/ServiceCategory', data)
      end

      # PUT /ServiceCategory/{id} - Update Service category
      def update_category(id, data)
        put("/ServiceCategory/#{id}", data)
      end

      # DELETE /ServiceCategory/{id} - Delete Service category
      def delete_category(id)
        delete("/ServiceCategory/#{id}")
      end

      # Service Request Details methods
      # GET /ServiceRequestDetails - List Service request details
      def request_details(params = {})
        get('/ServiceRequestDetails', params)
      end

      # GET /ServiceRequestDetails/{id} - Get specific Service request details
      def request_detail(id, params = {})
        get("/ServiceRequestDetails/#{id}", params)
      end

      # POST /ServiceRequestDetails - Create Service request details
      def create_request_detail(data)
        post('/ServiceRequestDetails', data)
      end

      # PUT /ServiceRequestDetails/{id} - Update Service request details
      def update_request_detail(id, data)
        put("/ServiceRequestDetails/#{id}", data)
      end

      # DELETE /ServiceRequestDetails/{id} - Delete Service request details
      def delete_request_detail(id)
        delete("/ServiceRequestDetails/#{id}")
      end

      # Service Restriction methods
      # GET /ServiceRestriction - List Service restrictions
      def restrictions(params = {})
        get('/ServiceRestriction', params)
      end

      # POST /ServiceRestriction - Create Service restriction
      def create_restriction(data)
        post('/ServiceRestriction', data)
      end

      # Service Status methods
      # GET /ServiceStatus - List Service statuses
      def statuses(params = {})
        get('/ServiceStatus', params)
      end

      # GET /ServiceStatus/{id} - Get specific Service status
      def status(id, params = {})
        get("/ServiceStatus/#{id}", params)
      end

      # POST /ServiceStatus - Create Service status
      def create_status(data)
        post('/ServiceStatus', data)
      end

      # PUT /ServiceStatus/{id} - Update Service status
      def update_status(id, data)
        put("/ServiceStatus/#{id}", data)
      end

      # DELETE /ServiceStatus/{id} - Delete Service status
      def delete_status(id)
        delete("/ServiceStatus/#{id}")
      end

      # GET /ServiceStatus/Subscribe - List Service status subscriptions
      def status_subscriptions(params = {})
        get('/ServiceStatus/Subscribe', params)
      end

      # GET /ServiceStatus/Subscribe/{id} - Get specific Service status subscription
      def status_subscription(id, params = {})
        get("/ServiceStatus/Subscribe/#{id}", params)
      end

      # POST /ServiceStatus/Subscribe - Create Service status subscription
      def create_status_subscription(data)
        post('/ServiceStatus/Subscribe', data)
      end

      # PUT /ServiceStatus/Subscribe/{id} - Update Service status subscription
      def update_status_subscription(id, data)
        put("/ServiceStatus/Subscribe/#{id}", data)
      end

      # DELETE /ServiceStatus/Subscribe/{id} - Delete Service status subscription
      def delete_status_subscription(id)
        delete("/ServiceStatus/Subscribe/#{id}")
      end
    end
  end
end
