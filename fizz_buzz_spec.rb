require('minitest/autorun')
require('minitest/rg')

require_relative('./fizz_buzz.rb')

# A group of test to create a fizz_buzz function.

class FizzBuzzSpec < MiniTest::Test

  def test_divisible_by_3()
    expected = "Fizz" 
    assert_equal(expected, fizz_buzz(3))
    assert_equal(expected, fizz_buzz(9))
    assert_equal(expected, fizz_buzz(12))
  end

  def test_divisible_by_5()
    expected = "Buzz"
    assert_equal(expected, fizz_buzz(5))
    assert_equal(expected, fizz_buzz(10))
    assert_equal(expected, fizz_buzz(20))
  end

  def test_divisible_by_3_and_5()
    expected = "FizzBuzz"
    assert_equal(expected, fizz_buzz(15))
    assert_equal(expected, fizz_buzz(30))
    assert_equal(expected, fizz_buzz(60))
  end
end