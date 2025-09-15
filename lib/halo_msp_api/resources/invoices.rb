# frozen_string_literal: true

module HaloMspApi
  module Resources
    class Invoices < Base
      # GET /Invoice - List of Invoices
      def list(params = {})
        list_resource('Invoice', params)
      end

      # GET /Invoice/{id} - Get a specific Invoice
      def get_invoice(id, params = {})
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
        get(resource_path('Invoice', "PDF/#{id}"), params)
      end

      # POST /Invoice/updatelines - Update Invoice lines
      def update_lines(data)
        post(resource_path('Invoice', nil, 'updatelines'), data)
      end

      # GET /Invoice/View - Get Invoice view
      def view(params = {})
        get(resource_path('Invoice', nil, 'View'), params)
      end

      # Invoice Change methods
      # GET /InvoiceChange - List Invoice changes
      def changes(params = {})
        get('/InvoiceChange', params)
      end

      # POST /InvoiceChange - Create Invoice change
      def create_change(data)
        post('/InvoiceChange', data)
      end

      # Invoice Detail Pro Rata methods
      # GET /InvoiceDetailProRata - List Invoice detail pro rata
      def detail_pro_rata(params = {})
        get('/InvoiceDetailProRata', params)
      end

      # POST /InvoiceDetailProRata - Create Invoice detail pro rata
      def create_detail_pro_rata(data)
        post('/InvoiceDetailProRata', data)
      end

      # Invoice Payment methods
      # GET /InvoicePayment - List Invoice payments
      def payments(params = {})
        get('/InvoicePayment', params)
      end

      # GET /InvoicePayment/{id} - Get specific Invoice payment
      def payment(id, params = {})
        get("/InvoicePayment/#{id}", params)
      end

      # POST /InvoicePayment - Create Invoice payment
      def create_payment(data)
        post('/InvoicePayment', data)
      end

      # PUT /InvoicePayment/{id} - Update Invoice payment
      def update_payment(id, data)
        put("/InvoicePayment/#{id}", data)
      end

      # DELETE /InvoicePayment/{id} - Delete Invoice payment
      def delete_payment(id)
        delete("/InvoicePayment/#{id}")
      end

      # Recurring Invoice methods
      # GET /RecurringInvoice - List Recurring invoices
      def recurring_invoices(params = {})
        get('/RecurringInvoice', params)
      end

      # GET /RecurringInvoice/{id} - Get specific Recurring invoice
      def recurring_invoice(id, params = {})
        get("/RecurringInvoice/#{id}", params)
      end

      # POST /RecurringInvoice - Create Recurring invoice
      def create_recurring_invoice(data)
        post('/RecurringInvoice', data)
      end

      # PUT /RecurringInvoice/{id} - Update Recurring invoice
      def update_recurring_invoice(id, data)
        put("/RecurringInvoice/#{id}", data)
      end

      # DELETE /RecurringInvoice/{id} - Delete Recurring invoice
      def delete_recurring_invoice(id)
        delete("/RecurringInvoice/#{id}")
      end

      # GET /RecurringInvoice/Lines - Get Recurring invoice lines
      def recurring_invoice_lines(params = {})
        get('/RecurringInvoice/Lines', params)
      end

      # POST /RecurringInvoice/process - Process Recurring invoices
      def process_recurring_invoices(data)
        post('/RecurringInvoice/process', data)
      end

      # POST /RecurringInvoice/updatelines - Update Recurring invoice lines
      def update_recurring_invoice_lines(data)
        post('/RecurringInvoice/updatelines', data)
      end
    end
  end
end
