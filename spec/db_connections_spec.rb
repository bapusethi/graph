require 'spec_helper.rb'

describe 'db connections' do
  include_context 'db shared graph'
  it {
    expect(connections.graph(1)).to eq [1, 5]
  }
end
