module Inmemory
  class Connection
    attr_reader :edge_id, :destination_id
    def initialize(edge_id, destination_id)
      @edge_id = edge_id
      @destination_id = destination_id
    end
  end
end
