RSpec.shared_context 'shared graph' do
  let(:nodes) do
    [Inmemory::Node.new(1), Inmemory::Node.new(2),
     Inmemory::Node.new(3), Inmemory::Node.new(4),
     Inmemory::Node.new(5), Inmemory::Node.new(6)]
  end

  let(:edges) do
    [Inmemory::Edge.new(1), Inmemory::Edge.new(2),
     Inmemory::Edge.new(3), Inmemory::Edge.new(4),
     Inmemory::Edge.new(5), Inmemory::Edge.new(6),
     Inmemory::Edge.new(7), Inmemory::Edge.new(8),
     Inmemory::Edge.new(9), Inmemory::Edge.new(10),
     Inmemory::Edge.new(11)]
  end

  let(:adjacent_list1) { [Inmemory::Connection.new(1, 3), Inmemory::Connection.new(5, 2)]  }
  let(:adjacent_list2) { [Inmemory::Connection.new(3, 4), Inmemory::Connection.new(4, 6)]  }
  let(:adjacent_list3) { [Inmemory::Connection.new(5, 3), Inmemory::Connection.new(6, 4)]  }
  let(:adjacent_list4) { [Inmemory::Connection.new(7, 6), Inmemory::Connection.new(8, 1)]  }
  let(:adjacent_list5) { [Inmemory::Connection.new(9, 3), Inmemory::Connection.new(10, 2)] }
  let(:adjacent_list6) { [Inmemory::Connection.new(11, 3)] }

  let(:connections) do
    [
      Inmemory::AdjacentList.new(nodes[0], adjacent_list1),
      Inmemory::AdjacentList.new(nodes[1], adjacent_list2),
      Inmemory::AdjacentList.new(nodes[2], adjacent_list3),
      Inmemory::AdjacentList.new(nodes[3], adjacent_list4),
      Inmemory::AdjacentList.new(nodes[4], adjacent_list5),
      Inmemory::AdjacentList.new(nodes[5], adjacent_list6)
    ]
  end
end
