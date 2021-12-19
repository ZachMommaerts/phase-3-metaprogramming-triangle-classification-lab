class Triangle
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if one > 0 && two > 0 && three > 0 && (one + two) > three && (one + three) > two && (two + three) > one
      if one == two && two == three
        :equilateral
      elsif one == two || two == three || one == three
        :isosceles
      elsif one != two && two != three || one != three
        :scalene
      end
    else
      raise TriangleError
    end

  end

  class TriangleError < StandardError
    def message
      'that aint no triangle'
    end
  end
end
