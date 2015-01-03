gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OnePatternTest < Minitest::Test

  def setup
    @count = 0
  end

  def test_one_more
    words = ["bigger", "better", "more", "improved", "advantageous"]
    words.each do |word|
      @count += 1 if word == 'more'
    end
    exactly_one = @count == 1
    assert exactly_one
  end

  def test_not_even_one_ring
    ornaments = ["bracelet", "anklet", "earring"]
    ornaments.each do |ornament|
      @count += 1 if ornament.include?(" ring")
    end
    exactly_one_ring = @count == 1
    refute exactly_one_ring
  end

  def test_not_just_one_ring
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    ornaments.each do |ornament|
      @count +=1 if ornament.include?(" ring")
    end
    exactly_one_ring = @count == 1
    refute exactly_one_ring
  end

  def test_one_time
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    words.each do |word|
      @count += 1 if word == "time"
    end
    exactly_one_time = @count == 1
    assert exactly_one_time
  end

  def test_one_double_digit_number
    numbers = [8, 2, 10, 333, 9, 101]
    numbers.each do |number|
      @count += 1 if number.to_s.length == 2
    end
    exactly_one_double_digit = @count == 1
    assert exactly_one_double_digit
  end

  def test_not_one_even_number
    numbers = [3, 20, 81, 10, 391, 32]
    numbers.each do |number|
      @count +1 if number.even?
    end
    exactly_one_even_number = @count == 1
    refute exactly_one_even_number
  end

end
