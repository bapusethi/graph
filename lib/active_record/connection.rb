require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: './spec/db/graph.db'
)

module ActiveRecord
  class Connection < ActiveRecord::Base
    def self.table_name
      Graph.configuration.connection_table_name || 'connections'
    end

    def self.setup(connections)
      connections.each do |connection|
        source_id, edge_id, destination_id = connection
        create({ source_id: source_id, edge_id: edge_id, destination_id: destination_id })
      end
    end

    def graph(id)
      adjacent_lists = Connection.where(graph_id: id).select(:source_id).distinct.map do |source|
        Inmemory::AdjacentList.new(Inmemory::Node.new(source.source_id), adjacent_list(id, source.source_id))
      end
      Inmemory::Graph.new(adjacent_lists)
    end

    private

    def adjacent_list(graph_id, source_id)
      Connection.where(graph_id: graph_id, source_id: source_id).select(:source_id, :edge_id, :destination_id).map do |record|
        Inmemory::Connection.new(record.edge_id, record.destination_id)
      end
    end
  end
end
