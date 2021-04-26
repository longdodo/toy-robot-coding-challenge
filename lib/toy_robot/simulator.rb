module ToyRobot
  class Simulator

    attr_reader :report

    def initialize(commands)
      @commands = commands
      @robot = Robot.new
      @report = ''
    end

    def execute
      @commands.each { |command| run_cmd command.chomp }
    end

    def run_cmd(command)
      if command == 'LEFT'
        @robot.left
      elsif command == 'RIGHT'
        @robot.right
      elsif command == 'MOVE'
        @robot.move
      elsif command == 'REPORT'
        @report << "#{@robot.report}\n"
      elsif command[0..4] == 'PLACE'
        args = command[6..-1].split(',')
        raise ArgumentError, 'Wrong number of arguments for PLACE command' unless args.length == 3

        coordinates = Coordinate.new(args[0], args[1])
        direction = args[2].downcase.to_sym
        position = Position.new(coordinates, direction)
        @robot.place(position)
      end
    end
  end
end
