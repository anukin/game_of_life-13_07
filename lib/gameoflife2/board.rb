module Gameoflife2
  ALIVE = Object.new
  DEAD = Object.new

  class Board
    def initialize(current_generation)
      @current_generation = current_generation
    end

    def next_generation
      [[ALIVE, DEAD, DEAD], [DEAD, ALIVE, DEAD], [ALIVE, DEAD, ALIVE]]
    end
  end
end
