require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drinks')

class TestPub < MiniTest::Test

  def setup
    @first_drink = Drink.new('Guiness', 3.50)
    @second_drink = Drink.new('Gin and Tonic', 4.50)
    @third_drink = Drink.new('Red Wine', 3.00)
    drinks = [@first_drink, @second_drink, @third_drink]
    @pub = Pub.new('The Red Lion', 50.00, drinks)

  end

  def test_get_pub_name()
    assert_equal('The Red Lion', @pub.name())
  end

end
