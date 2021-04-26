#!/usr/bin/env ruby
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib)

require_relative 'lib/toy_robot/simulator'
require_relative 'lib/toy_robot'

usage = %Q(
------------------------------------ USAGE ------------------------------------
Command:         ./run.rb [FILE_PATH]
Notes:            The sequence of commands must be on the first line of the file.
                 Any other lines after it will be ignored.
)

def run_simulation(file)
  commands = []
  file.each_line { |line| commands << line }

  simulator = ToyRobot::Simulator.new commands
  simulator.execute
  puts simulator.report
rescue Exception => e
  puts e.message
end

if ARGV.length == 1
  File.open(ARGV[0], 'r') { |file| run_simulation file }
else
  puts "\nWrong number of arguments\n"
  puts usage
end



