# ToyRobot Coding Challenge
_Long Do - <longht.do@gmail.com>_

## About

This application is a simulation of a toy robot moving on a square table top, of default dimensions of 5 units x 5 units using Ruby -v 3.0.0

## Setup

1. Clone this Repo
> $ git clone https://gitlab.com/longht.do/toy_robot.git
2. Go to the root of the app
`cd toy_robot`
3. Install the required gem
`bundle install`

## Usage

Command

`.run.rb [FILE_PATH]`

Examples

`./run.rb data/data-1.txt`

`./run.rb data/data-2.txt`

`./run.rb data/data-3.txt`

`./run.rb data/data-4.txt`

Commands | Description
--- | ---
PLACE X,Y,F | Place the robot on the table at coordinates x,y and facing the direction f. Valid x and y values are between 0-4. Valid directions are WEST, NORTH, EAST, SOUTH. Example Input: "PLACE 0,0,NORTH"
MOVE | Move the robot forward 1 step in the direction it is facing.
LEFT | Turn the robot's direction 90 degress to the left. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to WEST.
RIGHT | Turn the robot's direction 90 degress to the right. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to EAST.
REPORT | Output the current position of the robot. Example Output: "Output: 0,0,NORTH"

***


## Testing

Test by runing rspec

`bundle exec rspec`
