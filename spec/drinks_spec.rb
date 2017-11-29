require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')

class TestDrink < MiniTest::Test

  def setup
    @first_drink = Drink.new('Guiness', 3.50)
  end

  def test_get_drink_name()
    assert_equal('Guiness', @first_drink.name())
  end


end
