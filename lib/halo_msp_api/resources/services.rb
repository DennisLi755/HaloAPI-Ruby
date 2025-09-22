# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Services
    class Services < Base
      # GET /Service - List of Services
      def services(params = {})
        list_resource('Service', params)
      end

      # GET /Service/{id} - Get a specific Service
      def service(id, params = {})
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
        list_resource('ServiceAvailability', params)
      end

      # GET /ServiceAvailability/{id} - Get specific Service availability
      def availability(id, params = {})
        get_resource('ServiceAvailability', id, params)
      end

      # POST /ServiceAvailability - Create Service availability
      def create_availability(data)
        create_resource('ServiceAvailability', data)
      end

      # PUT /ServiceAvailability/{id} - Update Service availability
      def update_availability(id, data)
        update_resource('ServiceAvailability', id, data)
      end

      # DELETE /ServiceAvailability/{id} - Delete Service availability
      def delete_availability(id)
        delete_resource('ServiceAvailability', id)
      end

      # Service Category methods
      # GET /ServiceCategory - List Service categories
      def categories(params = {})
        list_resource('ServiceCategory', params)
      end

      # GET /ServiceCategory/{id} - Get specific Service category
      def category(id, params = {})
        get_resource('ServiceCategory', id, params)
      end

      # POST /ServiceCategory - Create Service category
      def create_category(data)
        create_resource('ServiceCategory', data)
      end

      # PUT /ServiceCategory/{id} - Update Service category
      def update_category(id, data)
        update_resource('ServiceCategory', id, data)
      end

      # DELETE /ServiceCategory/{id} - Delete Service category
      def delete_category(id)
        delete_resource('ServiceCategory', id)
      end

      # Service Request Details methods
      # GET /ServiceRequestDetails - List Service request details
      def request_details(params = {})
        list_resource('ServiceRequestDetails', params)
      end

      # GET /ServiceRequestDetails/{id} - Get specific Service request details
      def request_detail(id, params = {})
        get_resource('ServiceRequestDetails', id, params)
      end

      # POST /ServiceRequestDetails - Create Service request details
      def create_request_detail(data)
        create_resource('ServiceRequestDetails', data)
      end

      # PUT /ServiceRequestDetails/{id} - Update Service request details
      def update_request_detail(id, data)
        update_resource('ServiceRequestDetails', id, data)
      end

      # DELETE /ServiceRequestDetails/{id} - Delete Service request details
      def delete_request_detail(id)
        delete_resource('ServiceRequestDetails', id)
      end

      # Service Restriction methods
      # GET /ServiceRestriction - List Service restrictions
      def restrictions(params = {})
        list_resource('ServiceRestriction', params)
      end

      # POST /ServiceRestriction - Create Service restriction
      def create_restriction(data)
        create_resource('ServiceRestriction', data)
      end

      # Service Status methods
      # GET /ServiceStatus - List Service statuses
      def statuses(params = {})
        list_resource('ServiceStatus', params)
      end

      # GET /ServiceStatus/{id} - Get specific Service status
      def status(id, params = {})
        get_resource('ServiceStatus', id, params)
      end

      # POST /ServiceStatus - Create Service status
      def create_status(data)
        create_resource('ServiceStatus', data)
      end

      # PUT /ServiceStatus/{id} - Update Service status
      def update_status(id, data)
        update_resource('ServiceStatus', id, data)
      end

      # DELETE /ServiceStatus/{id} - Delete Service status
      def delete_status(id)
        delete_resource('ServiceStatus', id)
      end

      # GET /ServiceStatus/Subscribe - List Service status subscriptions
      def status_subscriptions(params = {})
        list_resource('ServiceStatus/Subscribe', params)
      end

      # GET /ServiceStatus/Subscribe/{id} - Get specific Service status subscription
      def status_subscription(id, params = {})
        get_resource('ServiceStatus/Subscribe', id, params)
      end

      # POST /ServiceStatus/Subscribe - Create Service status subscription
      def create_status_subscription(data)
        create_resource('ServiceStatus/Subscribe', data)
      end

      # PUT /ServiceStatus/Subscribe/{id} - Update Service status subscription
      def update_status_subscription(id, data)
        update_resource('ServiceStatus/Subscribe', id, data)
      end

      # DELETE /ServiceStatus/Subscribe/{id} - Delete Service status subscription
      def delete_status_subscription(id)
        delete_resource('ServiceStatus/Subscribe', id)
      end
    end
  end
end
