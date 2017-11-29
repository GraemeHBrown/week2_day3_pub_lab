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

end
