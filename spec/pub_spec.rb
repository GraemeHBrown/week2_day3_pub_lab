require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drinks')

class TestPub < MiniTest::Test

  def setup
    @first_drink = Drink.new('Guiness', 3.50)
    @second_drink = Drink.new('Gin and Tonic', 4.50)
    @third_drink = Drink.new('Red Wine', 3.00)
    @drinks = [@first_drink, @second_drink, @third_drink]
    @pub = Pub.new('The Red Lion', 50.00, @drinks)

  end

  def test_get_pub_name()
    assert_equal('The Red Lion', @pub.name())
  end

  def test_till_amount
    assert_equal(50.00, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(@drinks, @pub.drinks)
  end

  def test_has_specific_drink__true
    assert_equal(true, @pub.pub_has_drink?('Guiness'))
  end

  def test_has_specific_drink__false
    assert_equal(false, @pub.pub_has_drink?('White Wine'))
  end

end
