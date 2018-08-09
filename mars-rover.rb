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
  def initialize(x,y,d)
    @x = x
    @y = y
    @d = d
  end

  def location
    return @x,@y,@d
  end

  def read(instructions)
    instructions.each_char do |char|
      case char
      when 'L' then left
      when 'R' then right
      when 'M' then move
      end
    end
  end
end

rover1 = Rover.new(3,4,'N')
p rover1.location
