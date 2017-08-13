require_relative './inmemory/node.rb'
require_relative './inmemory/edge.rb'
require_relative './inmemory/connection.rb'
require_relative './inmemory/adjacent_list.rb'
require_relative './inmemory/graph.rb'
require_relative './active_record/connection.rb'
require_relative './configuration.rb'

module Graph
  def self.configuration
    @configuration ||= Graph::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
