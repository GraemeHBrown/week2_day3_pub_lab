require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drinks')

class TestCustomer < MiniTest::Test

  def setup
    @first_customer = Customer.new('Fred', 20.00)
    @first_drink = Drink.new('Guiness', 3.50)
    @second_drink = Drink.new('Gin and Tonic', 4.50)
    @third_drink = Drink.new('Red Wine', 3.00)
    @drinks = [@first_drink, @second_drink, @third_drink]
    @pub = Pub.new('The Red Lion', 50.00, @drinks)
  end

  def test_get_customer_name()
    assert_equal('Fred', @first_customer.name())
  end

  def test_wallet_amount()
    assert_equal(20.00, @first_customer.wallet)
  end

  def test_take_money_from_wallet()
    before_value = @first_customer.wallet()
    @first_customer.take_money_from_wallet(5)
    after_value = @first_customer.wallet()
    assert_equal(before_value-5, after_value)
  end

  def test_find_drink_price
    @first_customer.find_drink_price(@pub, 'Guiness')
    assert_equal(3.50, @first_drink.price)
  end

  def test_buy_drink_from_pub
    @first_customer.buy_drink_from_pub(@pub, @first_drink.name())
    assert_equal(16.50, @first_customer.wallet())
    assert_equal(53.50, @pub.till())
  end



end
