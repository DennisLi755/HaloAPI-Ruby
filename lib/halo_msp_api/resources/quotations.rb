# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Quotations
    class Quotations < Base
      # GET /Quotation - List of Quotations
      def list(params = {})
        list_resource('Quotation', params)
      end

      # GET /Quotation/{id} - Get a specific Quotation
      def get_quotations(id, params = {})
        get_resource('Quotation', id, params)
      end

      # POST /Quotation - Create a new Quotation
      def create_quotations(data)
        create_resource('Quotation', data)
      end

      # PUT /Quotation/{id} - Update a Quotation
      def update_quotations(id, data)
        update_resource('Quotation', id, data)
      end

      # DELETE /Quotation/{id} - Delete a Quotation
      def delete_quotations(id)
        delete_resource('Quotation', id)
      end

      # POST /Quotation/Approval - Quotation approval
      def approval(data)
        post(resource_path('Quotation', nil, 'Approval'), data)
      end

      # GET /Quotation/Lines - Get Quotation lines
      def lines(params = {})
        get(resource_path('Quotation', nil, 'Lines'), params)
      end

      # GET /Quotation/View - Get Quotation view
      def view(params = {})
        get(resource_path('Quotation', nil, 'View'), params)
      end
    end
  end
end
