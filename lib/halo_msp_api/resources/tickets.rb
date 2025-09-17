# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Tickets
    # rubocop:disable Metrics/ClassLength
    class Tickets < Base
      # GET /Tickets - List of Tickets
      def tickets(params = {})
        list_resource('Tickets', params)
      end

      # GET /Tickets/{id} - Get a specific Ticket
      def ticket(id, params = {})
        get_resource('Tickets', id, params)
      end

      # POST /Tickets - Create a new Ticket
      def create_ticket(data)
        create_resource('Tickets', data)
      end

      # PUT /Tickets/{id} - Update a Ticket
      def update_ticket(id, data)
        update_resource('Tickets', id, data)
      end

      # DELETE /Tickets/{id} - Delete a Ticket
      def delete_ticket(id)
        delete_resource('Tickets', id)
      end

      # GET /Tickets/Object - Get Ticket object
      def object(params = {})
        get(resource_path('Tickets', nil, 'Object'), params)
      end

      # POST /Tickets/processchildren - Process child tickets
      def process_children(data)
        post(resource_path('Tickets', nil, 'processchildren'), data)
      end

      # GET /Tickets/salesmailbox - Get sales mailbox tickets
      def sales_mailbox(params = {})
        get(resource_path('Tickets', nil, 'salesmailbox'), params)
      end

      # POST /Tickets/SetBillableProject - Set billable project
      def billable_project(data)
        post(resource_path('Tickets', nil, 'SetBillableProject'), data)
      end

      # GET /Tickets/View - Get Ticket view
      def view(params = {})
        get(resource_path('Tickets', nil, 'View'), params)
      end

      # POST /Tickets/vote - Vote on a ticket
      def vote(data)
        post(resource_path('Tickets', nil, 'vote'), data)
      end

      # POST /Tickets/zapier - Zapier integration
      def zapier(data)
        post(resource_path('Tickets', nil, 'zapier'), data)
      end

      # Ticket Approval methods
      # GET /TicketApproval - List Ticket approvals
      def approvals(params = {})
        get('TicketApproval', params)
      end

      # GET /TicketApproval/{id} - Get specific Ticket approval
      def approval(id, params = {})
        get("TicketApproval/#{id}", params)
      end

      # GET /TicketApproval/{id}&{seq} - Get specific Ticket approval with sequence
      def approval_with_sequence(id, seq, params = {})
        get("TicketApproval/#{id}&#{seq}", params)
      end

      # POST /TicketApproval - Create Ticket approval
      def create_approval(data)
        post('TicketApproval', data)
      end

      # PUT /TicketApproval/{id} - Update Ticket approval
      def update_approval(id, data)
        put("TicketApproval/#{id}", data)
      end

      # DELETE /TicketApproval/{id} - Delete Ticket approval
      def delete_approval(id)
        delete("TicketApproval/#{id}")
      end

      # Ticket Area methods
      # GET /TicketArea - List Ticket areas
      def areas(params = {})
        get('TicketArea', params)
      end

      # GET /TicketArea/{id} - Get specific Ticket area
      def area(id, params = {})
        get("TicketArea/#{id}", params)
      end

      # POST /TicketArea - Create Ticket area
      def create_area(data)
        post('TicketArea', data)
      end

      # PUT /TicketArea/{id} - Update Ticket area
      def update_area(id, data)
        put("TicketArea/#{id}", data)
      end

      # DELETE /TicketArea/{id} - Delete Ticket area
      def delete_area(id)
        delete("TicketArea/#{id}")
      end

      # Ticket Rules methods
      # GET /TicketRules - List Ticket rules
      def rules(params = {})
        get('TicketRules', params)
      end

      # GET /TicketRules/{id} - Get specific Ticket rule
      def rule(id, params = {})
        get("TicketRules/#{id}", params)
      end

      # POST /TicketRules - Create Ticket rule
      def create_rule(data)
        post('TicketRules', data)
      end

      # PUT /TicketRules/{id} - Update Ticket rule
      def update_rule(id, data)
        put("TicketRules/#{id}", data)
      end

      # DELETE /TicketRules/{id} - Delete Ticket rule
      def delete_rule(id)
        delete("TicketRules/#{id}")
      end

      # Ticket Type methods
      # GET /TicketType - List Ticket types
      def types(params = {})
        get('TicketType', params)
      end

      # GET /TicketType/{id} - Get specific Ticket type
      def type(id, params = {})
        get("TicketType/#{id}", params)
      end

      # POST /TicketType - Create Ticket type
      def create_type(data)
        post('TicketType', data)
      end

      # PUT /TicketType/{id} - Update Ticket type
      def update_type(id, data)
        put("TicketType/#{id}", data)
      end

      # DELETE /TicketType/{id} - Delete Ticket type
      def delete_type(id)
        delete("TicketType/#{id}")
      end

      # GET /TicketTypeField - List Ticket type fields
      def type_fields(params = {})
        get('TicketTypeField', params)
      end

      # Ticket Type Group methods
      # GET /TicketTypeGroup - List Ticket type groups
      def type_groups(params = {})
        get('TicketTypeGroup', params)
      end

      # GET /TicketTypeGroup/{id} - Get specific Ticket type group
      def type_group(id, params = {})
        get("TicketTypeGroup/#{id}", params)
      end

      # POST /TicketTypeGroup - Create Ticket type group
      def create_type_group(data)
        post('TicketTypeGroup', data)
      end

      # PUT /TicketTypeGroup/{id} - Update Ticket type group
      def update_type_group(id, data)
        put("TicketTypeGroup/#{id}", data)
      end

      # DELETE /TicketTypeGroup/{id} - Delete Ticket type group
      def delete_type_group(id)
        delete("TicketTypeGroup/#{id}")
      end
    end
  end
end
# rubocop:enable Metrics/ClassLength
