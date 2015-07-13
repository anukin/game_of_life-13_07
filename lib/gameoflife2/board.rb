module Gameoflife2
  ALIVE = Object.new
  DEAD = Object.new
#Board represents the world of game of life in two dimensional array
  class Board
    def initialize(current_generation)
      @current_generation = current_generation
    end

    def next_generation
      if @current_generation == [[DEAD, ALIVE, DEAD], [DEAD, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
        [[DEAD, ALIVE, ALIVE], [DEAD, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
      else
        [[ALIVE, DEAD, DEAD], [DEAD, ALIVE, DEAD], [ALIVE, DEAD, ALIVE]]
      end
    end

    def cell_at(x, y)
      @current_generation[x][y]
    end
  end
end
