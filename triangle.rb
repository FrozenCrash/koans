# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  sides = [a, b, c]
  case
  when sides[0] + sides[1] <= sides[2] || sides.any? == 0
  	raise TriangleError
  when sides[-1] <= 0 
  	raise TriangleError
  when sides[0] + sides[2] <= sides[1]
  	raise TriangleError
  when a == b && a == c 
  	:equilateral
  when a == b || a == c || b == c 
  	:isosceles
  else
  	:scalene
  end


end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
