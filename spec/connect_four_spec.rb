require 'spec_helper'
require 'connect_four.rb'

describe Connectfour do
it 'makes sure Connectfour is a class' do
  expect(Connectfour.new).to_not be_nil
end
end

describe '.board' do
it 'generates board with 42 empty slots' do
 g =  Connectfour.new
 g.instance_variable_get(:@board)
  expect(g.instance_variable_get(:@board)).to eq  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42]
end
end

describe '.player' do
it 'Establishes player one and player two' do
 g =  Connectfour.new
 g.instance_variable_get(:@player)
  expect(g.instance_variable_get(:@player)).to eq '_'
end
end


describe '#take_turn' do
it 'Tracks turns' do
 g =  Connectfour.new
 g.instance_variable_get(:@turn)
  expect(g.instance_variable_get(:@turn)).to eq 0
end
end

describe '#turn' do
it 'increments turns' do
 g =  Connectfour.new
g.turn = 22
 g.instance_variable_get(:@turn)
  expect(g.instance_variable_get(:@turn)).to eq 22
end
end


describe '#draw' do
it 'returns false if not a draw' do
 g =  Connectfour.new.draw
  expect(g).to eq false
end
end

describe '#win' do
it 'lets a player know if he or she has won' do

g = Connectfour.new
g.board[0] = '⏺'
g.board[1] = '⏺'
g.board[2] = '⏺'
g.board[3] = '○'
g.win?
  expect(g.instance_variable_get(:@won)).to eq false
end
end
