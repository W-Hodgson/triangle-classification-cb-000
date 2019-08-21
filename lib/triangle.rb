class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def postive_sides?
    @a > 0 && @b > 0 && @c > 0
  end

  def triangle_inequality?
    @a + @b < @c || @a + @c < @b || @b + @c < @a
  end

  def kind
    if postive_sides?
      unless triangle_inequality?
        if @a == @b && @a == @c
          :equilateral
        elsif @a == @b || @a == @c || @b == @c
          :isosceles
        else
          :scalene
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle."
    end
  end
end
