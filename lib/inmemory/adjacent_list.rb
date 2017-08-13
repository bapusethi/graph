module Inmemory
  class AdjacentList
    attr_reader :source_node, :connection_list
    def initialize(source_node, connection_list)
      @source_node = source_node
      @connection_list = connection_list
    end
  end
end
