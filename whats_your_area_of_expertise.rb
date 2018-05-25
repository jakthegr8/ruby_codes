# Solution to 'What's Your Area of Expertise' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/what-quo-s-your-area-of-expertise

class Point
  attr_accessor :x, :y
  def initialize(x, y)
    self.x, self.y = x, y
  end
end

class Rectangle
  attr_accessor :upper_left, :lower_right
  
  def initialize(upper_left, lower_right)
    self.upper_left, self.lower_right = upper_left, lower_right
  end
  
  def area
    (self.lower_right.x - self.upper_left.x) * (self.lower_right.y - self.upper_left.y)
  end
end

p1 = Point.new(0, 0)
p2 = Point.new(3, 4)
assert_equal Rectangle.new(p1, p2).area, 12
assert_equal Rectangle.new(p2, p1).area, 12
assert_equal Rectangle.new(Point.new(13, 5), p2).area,  10