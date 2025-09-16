# frozen_string_literal: true

module HaloMspApi
  module Resources
    # Resource class for Knowledge Base
    class KnowledgeBase < Base
      # GET /KBArticle - List of Knowledge Base Articles
      def articles(params = {})
        get('/KBArticle', params)
      end

      # GET /KBArticle/{id} - Get a specific Knowledge Base Article
      def article(id, params = {})
        get("/KBArticle/#{id}", params)
      end

      # POST /KBArticle - Create a new Knowledge Base Article
      def create_article(data)
        post('/KBArticle', data)
      end

      # PUT /KBArticle/{id} - Update a Knowledge Base Article
      def update_article(id, data)
        put("/KBArticle/#{id}", data)
      end

      # DELETE /KBArticle/{id} - Delete a Knowledge Base Article
      def delete_article(id)
        delete("/KBArticle/#{id}")
      end

      # GET /KBArticle/Search - Search Knowledge Base Articles
      def search_articles(params = {})
        get('/KBArticle/Search', params)
      end

      # Knowledge Base Category methods
      # GET /KBCategory - List Knowledge Base Categories
      def categories(params = {})
        get('/KBCategory', params)
      end

      # GET /KBCategory/{id} - Get specific Knowledge Base Category
      def category(id, params = {})
        get("/KBCategory/#{id}", params)
      end

      # POST /KBCategory - Create Knowledge Base Category
      def create_category(data)
        post('/KBCategory', data)
      end

      # PUT /KBCategory/{id} - Update Knowledge Base Category
      def update_category(id, data)
        put("/KBCategory/#{id}", data)
      end

      # DELETE /KBCategory/{id} - Delete Knowledge Base Category
      def delete_category(id)
        delete("/KBCategory/#{id}")
      end

      # Knowledge Base Keywords methods
      # GET /KBKeywords - List Knowledge Base Keywords
      def keywords(params = {})
        get('/KBKeywords', params)
      end

      # GET /KBKeywords/{id} - Get specific Knowledge Base Keywords
      def keyword(id, params = {})
        get("/KBKeywords/#{id}", params)
      end

      # POST /KBKeywords - Create Knowledge Base Keywords
      def create_keyword(data)
        post('/KBKeywords', data)
      end

      # PUT /KBKeywords/{id} - Update Knowledge Base Keywords
      def update_keyword(id, data)
        put("/KBKeywords/#{id}", data)
      end

      # DELETE /KBKeywords/{id} - Delete Knowledge Base Keywords
      def delete_keyword(id)
        delete("/KBKeywords/#{id}")
      end
    end
  end
end
