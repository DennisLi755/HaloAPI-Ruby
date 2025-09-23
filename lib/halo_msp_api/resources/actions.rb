# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Actions
    class Actions < Base
      # GET /Actions - List of Actions
      # Parameters based on swagger.json specification
      def actions(options = {})
        params = build_list_params(options)
        get('/Actions', params)
      end

      # GET /Actions/{id} - Get a specific Action
      def action(id, params = {})
        get_resource('Actions', id, params)
      end

      # POST /Actions - Create a new Action
      def create_action(data)
        create_resource('Actions', data)
      end

      # PUT /Actions/{id} - Update an Action
      def update_action(id, data)
        update_resource('Actions', id, data)
      end

      # DELETE /Actions/{id} - Delete an Action
      def delete_action(id)
        delete_resource('Actions', id)
      end

      # Action Reactions methods
      # GET /ActionReaction - List action reactions
      def reactions(params = {})
        list_resource('ActionReaction', params)
      end

      # GET /ActionReaction/{id} - Get specific action reaction
      def reaction(id, params = {})
        get_resource('ActionReaction', id, params)
      end

      # POST /ActionReaction - Create action reaction
      def create_reaction(data)
        create_resource('ActionReaction', data)
      end

      # PUT /ActionReaction/{id} - Update action reaction
      def update_reaction(id, data)
        update_resource('ActionReaction', id, data)
      end

      # DELETE /ActionReaction/{id} - Delete action reaction
      def delete_reaction(id)
        delete_resource('ActionReaction', id)
      end

      # Action Review methods
      # GET /ActionReview - List action reviews
      def reviews(params = {})
        list_resource('ActionReview', params)
      end

      # GET /ActionReview/{id} - Get specific action review
      def review(id, params = {})
        get_resource('ActionReview', id, params)
      end

      # POST /ActionReview - Create action review
      def create_review(data)
        create_resource('ActionReview', data)
      end

      # PUT /ActionReview/{id} - Update action review
      def update_review(id, data)
        update_resource('ActionReview', id, data)
      end

      # DELETE /ActionReview/{id} - Delete action review
      def delete_review(id)
        delete_resource('ActionReview', id)
      end
    end
  end
end
