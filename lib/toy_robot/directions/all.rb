module ToyRobot
  module Directions
    class North
      def left
        West.new
      end

      def right
        East.new
      end

      def forward(coord)
        Coordinate.new coord.x, coord.y + 1
      end

      def to_s
        "NORTH"
      end

      def to_sym
        :north
      end

      def downcase
        to_sym
      end
    end

    class West
      def left
        South.new
      end

      def right
        North.new
      end

      def forward(coord)
        Coordinate.new coord.x - 1, coord.y
      end

      def to_s
        "WEST"
      end

      def to_sym
        :west
      end

      def downcase
        to_sym
      end
    end

    class East
      def left
        North.new
      end

      def right
        South.new
      end

      def forward(coord)
        Coordinate.new coord.x + 1, coord.y
      end

      def to_s
        "EAST"
      end

      def to_sym
        :east
      end

      def downcase
        to_sym
      end
    end

    class South
      def left
        East.new
      end

      def right
        West.new
      end

      def forward(coord)
        Coordinate.new coord.x, coord.y - 1
      end

      def to_s
        "SOUTH"
      end

      def to_sym
        :south
      end

      def downcase
        to_sym
      end
    end
  end
end