module Inmemory
  class Node
    attr_reader :id, :predecessor, :distance
    INFINITY = 1_000_000_000

    def initialize(id)
      @id = id
      @colour = :white
      @predecessor = nil
      @distance = INFINITY
    end
  end
end
