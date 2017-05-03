require 'minitest/autorun'
require 'minitest/pride'
require './superfizzbuzz'

class SuperFizzBuzzTest < Minitest::Test

  def test_superfizzbuzz_exists
    superfizzbuzz = SuperFizz.new(15)
    assert_instance_of SuperFizz, superfizzbuzz
  end

end
