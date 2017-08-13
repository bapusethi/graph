module Inmemory
  class Graph
    def initialize(adjacent_lists)
      @adjacent_lists = adjacent_lists
    end

    def outgoing_edges(node)
      outgoing(node).map(&:edge_id)
    end

    def incoming_edges(node)
      incoming(node).map(&:edge_id)
    end

    def outgoing_nodes(node)
      outgoing(node).map(&:destination_id)
    end

    def incoming_nodes(node)
      incoming_adjacent(node).map { |adj_list| adj_list.source_node.id }
    end

    private

    def incoming(node)
      result = []
      @adjacent_lists.each do |adjacent_list|
        adjacent_list.connection_list.each do |connection|
          result <<  connection if connection.destination_id == node.id
        end
      end
      result
    end

    def incoming_adjacent(node)
      result = []
      @adjacent_lists.each do |adjacent_list|
        adjacent_list.connection_list.each do |connection|
          result <<  adjacent_list if connection.destination_id == node.id
        end
      end
      result
    end

    def outgoing(node)
      @adjacent_lists.each do |adjacent_list|
        return adjacent_list.connection_list if adjacent_list.source_node.id == node.id
      end
    end
  end
end
