# frozen_string_literal: true

module HaloApi
  module Resources
    class Reports < Base
      # GET /Report - List of Reports
      def list(params = {})
        list_resource("Report", params)
      end

      # GET /Report/{id} - Get a specific Report
      def get(id, params = {})
        get_resource("Report", id, params)
      end

      # POST /Report - Create a new Report
      def create(data)
        create_resource("Report", data)
      end

      # PUT /Report/{id} - Update a Report
      def update(id, data)
        update_resource("Report", id, data)
      end

      # DELETE /Report/{id} - Delete a Report
      def delete(id)
        delete_resource("Report", id)
      end

      # GET /Report/Bookmark - Get Report bookmarks
      def bookmarks(params = {})
        get(resource_path("Report", nil, "Bookmark"), params)
      end

      # POST /Report/Bookmark - Create Report bookmark
      def create_bookmark(data)
        post(resource_path("Report", nil, "Bookmark"), data)
      end

      # POST /Report/createpdf - Create Report PDF
      def create_pdf(data)
        post(resource_path("Report", nil, "createpdf"), data)
      end

      # POST /Report/print - Print Report
      def print(data)
        post(resource_path("Report", nil, "print"), data)
      end

      # GET /ReportData/{publishedid} - Get Report data
      def data(published_id, params = {})
        get("/ReportData/#{published_id}", params)
      end

      # Report Repository methods
      # GET /ReportRepository - List Report repositories
      def repositories(params = {})
        get("/ReportRepository", params)
      end

      # GET /ReportRepository/{id} - Get specific Report repository
      def repository(id, params = {})
        get("/ReportRepository/#{id}", params)
      end

      # POST /ReportRepository - Create Report repository
      def create_repository(data)
        post("/ReportRepository", data)
      end

      # PUT /ReportRepository/{id} - Update Report repository
      def update_repository(id, data)
        put("/ReportRepository/#{id}", data)
      end

      # DELETE /ReportRepository/{id} - Delete Report repository
      def delete_repository(id)
        delete("/ReportRepository/#{id}")
      end

      # GET /ReportRepository/ReportCategories - Get Report categories
      def categories(params = {})
        get("/ReportRepository/ReportCategories", params)
      end
    end
  end
end
