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
  if a <=0 || b <= 0 || c <= 0
    raise TriangleError, "lengths must be positive values"
  end

  if b + c <= a
    raise TriangleError, "Length of side a must more more than lenghts of sides b and c combined."
  end

  if a + c <= b
    raise TriangleError, "Length of side b must more more than lenghts of sides a and c combined."
  end

  if a + b <= c
    raise TriangleError, "Length of side c must more more than lenghts of sides a and b combined."
  end

  if a == b
    if b == c
      return :equilateral
    else
      return :isosceles
    end
  end

  if b == c
    if c == a
      return :equilateral
    else
      return :isosceles
    end
  end

   if c == a
     if a == b
       return :equilateral
     else
       return :isosceles
    end
  end

  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
