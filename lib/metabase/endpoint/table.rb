# frozen_string_literal: true

module Metabase
  module Endpoint
    module Table
      # Fetch all tables.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apitable
      def tables(**params)
        get('/api/table', params)
      end
      
      # Fetch the table.
      #
      def table(table_id, **params)
        get("/table/card/#{table_id}", params)
      end
      
      def query_table(table_id, **params)
        get("/api/table/#{table_id}/query_metadata", params)
      end
    end
  end
end
