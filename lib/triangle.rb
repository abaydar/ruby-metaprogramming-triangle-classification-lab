require 'pry'
class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three    
  end

  def invalid?
    if (side_one + side_two) <= side_three || (side_one + side_three) <= side_two || (side_two + side_three) <= side_one || side_one < 0 || side_two < 0 || side_three < 0
      true
    else
      false
    end
  end


  def kind
    if invalid?
       raise TriangleError
    elsif side_one == side_two && side_two == side_three && side_one == side_three
        :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
        :isosceles
    else
        :scalene
    end
  end
  #binding.pry

  class TriangleError < StandardError
    "this triangle is invalid"
  end

end
