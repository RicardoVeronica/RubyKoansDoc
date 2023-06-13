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
  raise TriangleError, 'Error: sides should be greater than zero' if a.zero? && b.zero? && c.zero?

  raise TriangleError, 'Error: don\'t use negative numbers' if a.negative? || b.negative? || c.negative?

  raise TriangleError, 'The sum of any two sides should be greater than the third side' if
  a + b <= c || a + c <= b || b + c <= a

  # if a == b && b == c
  #   :equilateral
  # elsif a == b || a == c || b == c
  #   :isosceles
  # elsif a != b && a != c
  #   :scalene
  # end

  # use explicit return for this type of code
  return :equilateral if a == b && b == c

  return :isosceles if a == b || a == c || b == c

  return :scalene if a != b && a != c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
