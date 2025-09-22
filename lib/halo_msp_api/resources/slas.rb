# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for SLAs
    class Slas < Base
      # GET /SLA - List of SLAs
      def slas(params = {})
        list_resource('SLA', params)
      end

      # GET /SLA/{id} - Get a specific SLA
      def sla(id, params = {})
        get_resource('SLA', id, params)
      end

      # POST /SLA - Create a new SLA
      def create_sla(data)
        create_resource('SLA', data)
      end

      # PUT /SLA/{id} - Update an SLA
      def update_sla(id, data)
        update_resource('SLA', id, data)
      end

      # DELETE /SLA/{id} - Delete an SLA
      def delete_sla(id)
        delete_resource('SLA', id)
      end

      # SLA Policy methods
      # GET /SLAPolicy - List SLA policies
      def policies(params = {})
        list_resource('SLAPolicy', params)
      end

      # GET /SLAPolicy/{id} - Get specific SLA policy
      def policy(id, params = {})
        get_resource('SLAPolicy', id, params)
      end

      # POST /SLAPolicy - Create SLA policy
      def create_policy(data)
        create_resource('SLAPolicy', data)
      end

      # PUT /SLAPolicy/{id} - Update SLA policy
      def update_policy(id, data)
        update_resource('SLAPolicy', id, data)
      end

      # DELETE /SLAPolicy/{id} - Delete SLA policy
      def delete_policy(id)
        delete_resource('SLAPolicy', id)
      end

      # SLA Target methods
      # GET /SLATarget - List SLA targets
      def targets(params = {})
        list_resource('SLATarget', params)
      end

      # GET /SLATarget/{id} - Get specific SLA target
      def target(id, params = {})
        get_resource('SLATarget', id, params)
      end

      # POST /SLATarget - Create SLA target
      def create_target(data)
        create_resource('SLATarget', data)
      end

      # PUT /SLATarget/{id} - Update SLA target
      def update_target(id, data)
        update_resource('SLATarget', id, data)
      end

      # DELETE /SLATarget/{id} - Delete SLA target
      def delete_target(id)
        delete_resource('SLATarget', id)
      end
    end
  end
end
