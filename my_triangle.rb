def triangle(a, b, c)
  return :equilateral if a == b && b == c

  return :isosceles if a == b || a == c || b == c

  return :scalene if a != b && a != c
end

puts triangle(1, 1, 1)
puts triangle(1, 2, 1)
puts triangle(1, 2, 3)
