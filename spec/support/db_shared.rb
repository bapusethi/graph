class Edge < ActiveRecord::Base
end

class Node < ActiveRecord::Base
end

RSpec.shared_context 'db shared graph' do
  let(:connections) do
    ActiveRecord::Connection.new
  end
end
