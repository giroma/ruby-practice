# Test Input:
#
# 5 5
# 1 2 N
# LMLMLMLMM
# 3 3 E
# MMRMMRMRRM
#
#
# Expected Output:
#
# 1 3 N
# 5 1 E

# Behaviour
#   read instructions
#   move
#   turn

class Rover
  @@dir = ['N','E','S','W']
  @@max_x = nil
  @@max_y = nil

  def initialize(position)
    @x = position[0].to_i
    @y = position[2].to_i
    d  = position[4]

    # convert direction to a number
    case d
    when 'N' then @d = 0
    when 'E' then @d = 1
    when 'S' then @d = 2
    when 'W' then @d = 3
    end
  end

  def self.set_max(x,y)
    @@max_x = x.to_i
    @@max_y = y.to_i
  end

  def location
    # convert number back to letter of direction
    d = @@dir[@d%4]

    return "#{@x} #{@y} #{d}"
  end

  def read(instructions)
    instructions.each_char do |char|
      case char
      when 'L' then @d -= 1
      when 'R' then @d += 1
      when 'M' then move
      end
    end
  end

  def move
    case @d%4
    when 0 then @y += 1
    when 1 then @x += 1
    when 2 then @y -= 1
    when 3 then @x -= 1
    end

    if @x < 0 || @x > @@max_x || @y < 0 || @x > @@max_y
      raise 'Error, improper movement: outside of grid'
    end
  end
end

input = '5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
2 2 N
MMRMMR'

def rover_calculation(input)
  rover = nil

  input.each_line.with_index do |line, index|
    if index == 0
      Rover.set_max(line[0], line[2])
    elsif index%2 == 1
      rover = Rover.new(line)
    else
      rover.read(line)
      p rover.location
    end
  end
end

rover_calculation(input)


# rover1 = Rover.new('3 3 E')
# p rover1.location
# rover1.read('MMRMMRMRRM')
# p rover1.location
