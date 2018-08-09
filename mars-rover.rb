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

class Rover
  def initialize(x,y,d)
    @x = x
    @y = y
    @d = d
  end

  def read
    return @x,@y,@d
  end
end

rover1 = Rover.new(3,4,'N')
p rover1.read
