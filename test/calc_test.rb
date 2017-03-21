# require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/calc.rb'

# .new
# #total
# #add
# #clear
# #subtract

class CalcTest < MiniTest::Test
  def test_calc_exists
    calc = Calc.new
    assert calc
  end

  def test_add_returns_sum
    calc = Calc.new
    result = calc.add(2,2)
    assert_equal 4, result
  end

  def test_total_returns_zero_initially
    calc = Calc.new
    result = calc.total
    assert_equal 0, result
  end

  def test_add_updates_total_with_result
    calc = Calc.new
    calc.add(2,2)
    assert_equal 4, calc.total
    calc.add(3,3)
    assert_equal 10, calc.total
  end

  def test_clear_resets_total
    calc = Calc.new
    calc.add(2,2)
    assert_equal 4, calc.total
    calc.clear
    assert_equal 0, calc.total
  end

  def test_subtract_returns_difference
    calc = Calc.new
    result = calc.subtract(6,2)
    assert_equal 4, result
  end

  def test_subtract_updates_total_with_result
    calc = Calc.new
    calc.subtract(6,2)
    assert_equal 4, calc.total
    calc.subtract(3,5)
    assert_equal 2, calc.total
  end
end
