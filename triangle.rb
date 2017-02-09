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
  raise TriangleError.new unless a > 0 and b > 0 and c > 0
  raise TriangleError.new unless [a,b,c].sort[0,2].sum > [a,b,c].max
  return :equilateral if a == b and b == c
  return :isosceles if a == b or b == c or c == a
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
