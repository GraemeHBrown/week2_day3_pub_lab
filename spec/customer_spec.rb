require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class TestCustomer < MiniTest::Test

  def setup
    @first_customer = Customer.new('Fred', 20.00)
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

  def test_duy_drink_from_pub
    
  end


end
