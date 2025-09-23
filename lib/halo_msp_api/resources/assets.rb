# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Assets
    class Assets < Base
      # GET /Asset - List of Assets
      def assets(params = {})
        list_resource('Asset', params)
      end

      # GET /Asset/{id} - Get a specific Asset
      def asset(id, params = {})
        get_resource('Asset', id, params)
      end

      # POST /Asset - Create a new Asset
      def create_asset(data)
        create_resource('Asset', data)
      end

      # PUT /Asset/{id} - Update an Asset
      def update_asset(id, data)
        update_resource('Asset', id, data)
      end

      # DELETE /Asset/{id} - Delete an Asset
      def delete_asset(id)
        delete_resource('Asset', id)
      end

      # GET /Asset/GetAllSoftwareVersions - Get all software versions
      def software_versions(params = {})
        list_resource('Asset', params, 'GetAllSoftwareVersions')
      end

      # GET /Asset/NextTag - Get next asset tag
      def next_tag(params = {})
        get_resource('Asset', 'NextTag', params)
      end

      # Asset Change related methods
      # GET /AssetChange - List Asset changes
      def changes(params = {})
        list_resource('AssetChange', params)
      end

      # POST /AssetChange - Create Asset change
      def create_change(data)
        create_resource('AssetChange', data)
      end

      # Asset Group methods
      # GET /AssetGroup - List Asset groups
      def groups(params = {})
        list_resource('AssetGroup', params)
      end

      # GET /AssetGroup/{id} - Get specific Asset group
      def group(id, params = {})
        get_resource('AssetGroup', id, params)
      end

      # POST /AssetGroup - Create Asset group
      def create_group(data)
        create_resource('AssetGroup', data)
      end

      # PUT /AssetGroup/{id} - Update Asset group
      def update_group(id, data)
        update_resource('AssetGroup', id, data)
      end

      # DELETE /AssetGroup/{id} - Delete Asset group
      def delete_group(id)
        delete_resource('AssetGroup', id)
      end

      # Asset Software methods
      # GET /AssetSoftware - List Asset software
      def software(params = {})
        list_resource('AssetSoftware', params)
      end

      # POST /AssetSoftware - Create Asset software
      def create_software(data)
        create_resource('AssetSoftware', data)
      end

      # Asset Type methods
      # GET /AssetType - List Asset types
      def types(params = {})
        list_resource('AssetType', params)
      end

      # GET /AssetType/{id} - Get specific Asset type
      def type(id, params = {})
        get_resource('AssetType', id, params)
      end

      # POST /AssetType - Create Asset type
      def create_type(data)
        create_resource('AssetType', data)
      end

      # PUT /AssetType/{id} - Update Asset type
      def update_type(id, data)
        update_resource('AssetType', id, data)
      end

      # DELETE /AssetType/{id} - Delete Asset type
      def delete_type(id)
        delete_resource('AssetType', id)
      end

      # GET /AssetTypeInfo - Get Asset type info
      def type_info(params = {})
        get(resource_path('AssetTypeInfo'), params)
      end

      # Asset Type Mappings methods
      # GET /AssetTypeMappings - List Asset type mappings
      def type_mappings(params = {})
        list_resource('AssetTypeMappings', params)
      end

      # GET /AssetTypeMappings/{id} - Get specific Asset type mapping
      def type_mapping(id, params = {})
        get_resource('AssetTypeMappings', id, params)
      end

      # POST /AssetTypeMappings - Create Asset type mapping
      def create_type_mapping(data)
        create_resource('AssetTypeMappings', data)
      end

      # PUT /AssetTypeMappings/{id} - Update Asset type mapping
      def update_type_mapping(id, data)
        update_resource('AssetTypeMappings', id, data)
      end

      # DELETE /AssetTypeMappings/{id} - Delete Asset type mapping
      def delete_type_mapping(id)
        delete_resource('AssetTypeMappings', id)
      end
    end
  end
end
