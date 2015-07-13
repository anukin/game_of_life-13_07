require 'spec_helper'

module Gameoflife2  
  describe "Board" do 
    it "should give next generation based on current generation" do
      current_generation = [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [ALIVE, DEAD, ALIVE]]
      next_generation = [[ALIVE, DEAD, DEAD], [DEAD, ALIVE, DEAD], [ALIVE, DEAD, ALIVE]]
      board = Board.new(current_generation)
      expect(board.next_generation).to eq(next_generation)
    end
  end
end
