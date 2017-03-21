require 'pry'

class Calc
  attr_reader :total

  def initialize
    @total = 0
  end

  def update_total(new_total)
    @total += new_total
  end

  def clear
    @total = 0
  end

  def add(num1, num2)
    sum = num1 + num2
    update_total( sum )
    sum
  end

  def subtract(num1, num2)
    diff = num1 - num2
    update_total( diff )
    diff
  end
end
