class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet.to_f
  end

  def take_money_from_wallet(value)
    return @wallet -= value
  end

end
