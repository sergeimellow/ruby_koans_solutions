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
  raise TriangleError, "your missing a side" if !(a & b & c) 
  raise TriangleError, "you have negative or 0 length sides" if (a & b & c) && (a <= 0 || b <= 0 || c <= 0)
  raise TriangleError, "Invalid triangle, two sides cannot be smaller than 3rd" if (a >= b + c) || (b >= a + c) || (c >= a + b)
  #raise TriangleError, "your triangle sucks" if a == 0 || b == 0 || c == 0
  ret = :equilateral if a == b && a == c
  ret = :isosceles if (a == b && a != c) || (a == c && a != b) || (b == c && a != b)
  ret = :scalene if a != b && a != c && b != c
  return ret
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
