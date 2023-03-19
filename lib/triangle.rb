class Triangle
  attr_accessor :a, :b, :c
  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def sides_greater_than_zero?
    [a,b,c].all?(&:positive?)
  end
  def triangle_inequality?
    a+b > c && c+b > a && c+a > b
  end
  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && triangle_inequality?
  end
  class TriangleError < StandardError 
  end

  def kind 
    validate_triangle
  if a == b && b ==c 
    :equilateral
  elsif a==b || b == c || a == c
      :isosceles
      else
        :scalene
      end
    end
end
