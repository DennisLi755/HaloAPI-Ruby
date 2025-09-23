# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Invoices
    class Invoices < Base
      # GET /Invoice - List of Invoices
      def invoices(params = {})
        list_resource('Invoice', params)
      end

      # GET /Invoice/{id} - Get a specific Invoice
      def invoice(id, params = {})
        get_resource('Invoice', id, params)
      end

      # POST /Invoice - Create a new Invoice
      def create_invoice(data)
        create_resource('Invoice', data)
      end

      # PUT /Invoice/{id} - Update an Invoice
      def update_invoice(id, data)
        update_resource('Invoice', id, data)
      end

      # DELETE /Invoice/{id} - Delete an Invoice
      def delete_invoice(id)
        delete_resource('Invoice', id)
      end

      # POST /Invoice/{id}/void - Void an Invoice
      def void(id, data = {})
        post(resource_path('Invoice', "#{id}/void"), data)
      end

      # GET /Invoice/PDF/{id} - Get Invoice PDF
      def pdf(id, params = {})
        get_resource('Invoice', "#{id}/PDF", params)
      end

      # POST /Invoice/updatelines - Update Invoice lines
      def update_lines(data)
        post(resource_path('Invoice', nil, 'updatelines'), data)
      end

      # GET /Invoice/View - Get Invoice view
      def view(params = {})
        get_resource('Invoice', 'View', params)
      end

      # Invoice Change methods
      # GET /InvoiceChange - List Invoice changes
      def changes(params = {})
        list_resource('InvoiceChange', params)
      end

      # POST /InvoiceChange - Create Invoice change
      def create_change(data)
        create_resource('InvoiceChange', data)
      end

      # Invoice Detail Pro Rata methods
      # GET /InvoiceDetailProRata - List Invoice detail pro rata
      def detail_pro_rata(params = {})
        list_resource('InvoiceDetailProRata', params)
      end

      # POST /InvoiceDetailProRata - Create Invoice detail pro rata
      def create_detail_pro_rata(data)
        create_resource('InvoiceDetailProRata', data)
      end

      # Invoice Payment methods
      # GET /InvoicePayment - List Invoice payments
      def payments(params = {})
        list_resource('InvoicePayment', params)
      end

      # GET /InvoicePayment/{id} - Get specific Invoice payment
      def payment(id, params = {})
        get_resource('InvoicePayment', id, params)
      end

      # POST /InvoicePayment - Create Invoice payment
      def create_payment(data)
        create_resource('InvoicePayment', data)
      end

      # PUT /InvoicePayment/{id} - Update Invoice payment
      def update_payment(id, data)
        update_resource('InvoicePayment', id, data)
      end

      # DELETE /InvoicePayment/{id} - Delete Invoice payment
      def delete_payment(id)
        delete_resource('InvoicePayment', id)
      end

      # Recurring Invoice methods
      # GET /RecurringInvoice - List Recurring invoices
      def recurring_invoices(params = {})
        list_resource('RecurringInvoice', params)
      end

      # GET /RecurringInvoice/{id} - Get specific Recurring invoice
      def recurring_invoice(id, params = {})
        get_resource('RecurringInvoice', id, params)
      end

      # POST /RecurringInvoice - Create Recurring invoice
      def create_recurring_invoice(data)
        create_resource('RecurringInvoice', data)
      end

      # PUT /RecurringInvoice/{id} - Update Recurring invoice
      def update_recurring_invoice(id, data)
        update_resource('RecurringInvoice', id, data)
      end

      # DELETE /RecurringInvoice/{id} - Delete Recurring invoice
      def delete_recurring_invoice(id)
        delete_resource('RecurringInvoice', id)
      end

      # GET /RecurringInvoice/Lines - Get Recurring invoice lines
      def recurring_invoice_lines(params = {})
        get_resource('RecurringInvoice', 'Lines', params)
      end

      # POST /RecurringInvoice/process - Process Recurring invoices
      def process_recurring_invoices(data)
        post('RecurringInvoice/process', data)
      end

      # POST /RecurringInvoice/updatelines - Update Recurring invoice lines
      def update_recurring_invoice_lines(data)
        post('RecurringInvoice/updatelines', data)
      end
    end
  end
end
