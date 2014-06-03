require 'point'

class Wheelchair
  
  NORTH = 'N'
  SOUTH = 'S'
  EAST = 'E'
  WEST = 'W'

  ACTIONS = {
    b: :move_backwards,
    f: :move_forward,
    l: :turn_left,
    r: :turn_right
  }

  SPEED = 1

  def initialize
    @position = Point.new 0, 0
    @direction = NORTH
  end

  def report_position
    @position.to_hash
  end

  def report_direction
    @direction
  end

  def do commands
    commands.each do |command|
      send(ACTIONS[command.to_sym])
    end
  end

  private 
  
  def move_backwards
    @position = @position.offset_y(-SPEED)
  end

  def move_forward
    @position = @position.offset_y SPEED
  end

  def turn_left
    @direction = WEST
  end

  def turn_right
    @direction = EAST
  end
end
