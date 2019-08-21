class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def negative_sides?

  end

  def kind
    if @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle."
    end
  end
end
