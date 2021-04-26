module ToyRobot
  module Directions
    DIRECTIONS_MAP = {
      north: North.new,
      west:  West.new,
      south: South.new,
      east:  East.new
    }

    def self.[](direction_name)
      DIRECTIONS_MAP[direction_name]
    end
  end
end
