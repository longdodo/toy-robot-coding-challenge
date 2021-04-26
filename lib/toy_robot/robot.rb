module ToyRobot
  class NeedToBeInPlace < StandardError; end
  class OutOfLimits < StandardError; end

  class Robot
    def initialize(table = [5, 5])
      @table = table
    end

    def place(position)
      raise OutOfLimits.new if outside_limits?(position)

      @position = position
      @placed = true
    end

    def report
      @position.to_s
    end

    def left
      raise NeedToBeInPlace.new unless @placed

      @position = @position.left
    end

    def right
      raise NeedToBeInPlace.new unless @placed

      @position = @position.right
    end

    def move
      raise NeedToBeInPlace.new unless @placed
      future_move = @position.forward
      if outside_limits?(future_move)
        raise OutOfLimits.new
      end
      @position = future_move
    end

    private
    def outside_limits?(position)
      (position.x < 0 || position.y < 0) ||
        (position.x >= @table[0] || position.y >= @table[1])
    end
  end
end