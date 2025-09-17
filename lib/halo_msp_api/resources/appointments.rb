# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Appointments
    class Appointments < Base
      # GET /Appointment - List of Appointments
      def appointments(params = {})
        list_resource('Appointment', params)
      end

      # GET /Appointment/{id} - Get a specific Appointment
      def appointment(id, params = {})
        get_resource('Appointment', id, params)
      end

      # POST /Appointment - Create a new Appointment
      def create_appointment(data)
        create_resource('Appointment', data)
      end

      # PUT /Appointment/{id} - Update an Appointment
      def update_appointment(id, data)
        update_resource('Appointment', id, data)
      end

      # DELETE /Appointment/{id} - Delete an Appointment
      def delete_appointment(id)
        delete_resource('Appointment', id)
      end

      # GET /Appointment/Availability - Get Appointment availability
      def availability(params = {})
        get(resource_path('Appointment', nil, 'Availability'), params)
      end

      # GET /Appointment/Calendar - Get Appointment calendar
      def calendar(params = {})
        get(resource_path('Appointment', nil, 'Calendar'), params)
      end

      # POST /Appointment/CheckAvailability - Check Appointment availability
      def check_availability(data)
        post(resource_path('Appointment', nil, 'CheckAvailability'), data)
      end

      # GET /Appointment/Slots - Get Appointment slots
      def slots(params = {})
        get(resource_path('Appointment', nil, 'Slots'), params)
      end

      # POST /Appointment/Slots - Create Appointment slots
      def create_slots(data)
        post(resource_path('Appointment', nil, 'Slots'), data)
      end

      # GET /Appointment/Types - Get Appointment types
      def types(params = {})
        get(resource_path('Appointment', nil, 'Types'), params)
      end

      # POST /Appointment/Types - Create Appointment type
      def create_type(data)
        post(resource_path('Appointment', nil, 'Types'), data)
      end
    end
  end
end
