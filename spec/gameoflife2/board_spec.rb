require 'spec_helper'

module Gameoflife2  
  describe "Board" do 
    context "next generation" do
      it "should give next generation" do
        current_generation = [[ALIVE, DEAD, DEAD], [DEAD, DEAD, DEAD], [ALIVE, DEAD, ALIVE]]
        next_generation = [[ALIVE, DEAD, DEAD], [DEAD, ALIVE, DEAD], [ALIVE, DEAD, ALIVE]]
        board = Board.new(current_generation)
        expect(board.next_generation).to eq(next_generation)
      end

      it "should give next generation based on current generation" do
        current_generation = [[DEAD, ALIVE, DEAD], [DEAD, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
        next_generation = [[DEAD, ALIVE, ALIVE], [DEAD, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
        board = Board.new(current_generation)
        expect(board.next_generation).to eq(next_generation)
      end

      it "should give next generation based on current generation" do
        current_generation = [[DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]]
        next_generation = [[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]]
        board = Board.new(current_generation)
        expect(board.next_generation).to eq(next_generation)
      end
    end

    it "should give the state at x, y coordinates" do
      current_generation = [[DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]]
      board = Board.new(current_generation)
      expect(board.cell_at(1, 1)).to eq(DEAD)
    end
  end
end
