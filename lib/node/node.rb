module Node

  def self.included(base)
    base.extend(ClassMethods)
  end 

  module ClassMethods
    def acts_as_node(node_name, edge_name)
      
      has_many :outgoing, foreign_key: :from, through: :graph, -> { where(from: self.id )  }
      has_many :incoming, class_name:  node_name,foreign_key: :to, through: :graph, -> { where(to: self.id )  }
      
      has_many :outgoing_edges, class_name:  edge_name,foreign_key: :edge, through: :graph, -> { where(from: self.id )  }
      has_many :incoming_edges, class_name:  edge_name,foreign_key: :edge, through: :graph, -> { where(to: self.id )  }
    end
  end
end
