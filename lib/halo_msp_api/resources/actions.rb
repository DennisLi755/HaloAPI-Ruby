# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Actions
    class Actions < Base
      # GET /Actions - List of Actions
      # Parameters based on swagger.json specification
      def list(options = {})
        params = build_list_params(options)
        get('/Actions', params)
      end

      # GET /Actions/{id} - Get a specific Action
      def get_action(id, params = {})
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
        get('/ActionReaction', params)
      end

      # GET /ActionReaction/{id} - Get specific action reaction
      def reaction(id, params = {})
        get("/ActionReaction/#{id}", params)
      end

      # POST /ActionReaction - Create action reaction
      def create_reaction(data)
        post('/ActionReaction', data)
      end

      # PUT /ActionReaction/{id} - Update action reaction
      def update_reaction(id, data)
        put("/ActionReaction/#{id}", data)
      end

      # DELETE /ActionReaction/{id} - Delete action reaction
      def delete_reaction(id)
        delete("/ActionReaction/#{id}")
      end

      # Action Review methods
      # GET /ActionReview - List action reviews
      def reviews(params = {})
        get('/ActionReview', params)
      end

      # GET /ActionReview/{id} - Get specific action review
      def review(id, params = {})
        get("/ActionReview/#{id}", params)
      end

      # POST /ActionReview - Create action review
      def create_review(data)
        post('/ActionReview', data)
      end

      # PUT /ActionReview/{id} - Update action review
      def update_review(id, data)
        put("/ActionReview/#{id}", data)
      end

      # DELETE /ActionReview/{id} - Delete action review
      def delete_review(id)
        delete("/ActionReview/#{id}")
      end
    end
  end
end
