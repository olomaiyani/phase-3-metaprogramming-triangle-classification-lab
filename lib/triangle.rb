class Triangle
  # write code here
  def initialize(x, y, z)
    @x =x
    @y =y
    @z =z
  end
  def kind
    if (@x <= 0 || @y <= 0 || @z <= 0)
      raise TriangleError
    elsif(@x + @y <= @z || @y + @z <= @x || @x + @z <= @y)
      raise TriangleError
    elsif (@x == @y && @y == @z)  
      :equilateral
    elsif (@x == @y || @y == @z || @x == @z)  
      :isosceles 
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end