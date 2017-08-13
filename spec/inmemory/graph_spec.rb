require 'spec_helper.rb'

describe Inmemory::Graph do
  include_context 'shared graph'
  subject { Inmemory::Graph.new(connections) }
  it {  expect(subject.outgoing_edges(nodes[3])).to eq [7, 8] }
  it {  expect(subject.incoming_edges(nodes[3])).to eq [3, 6] }

  it {  expect(subject.incoming_nodes(nodes[3])).to eq [2, 3] }
  it {  expect(subject.outgoing_nodes(nodes[3])).to eq [6, 1] }

  it {  expect(subject.outgoing_nodes(nodes[1])).to eq [4, 6] }
end
