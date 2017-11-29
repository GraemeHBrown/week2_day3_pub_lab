class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet.to_f
  end

  def take_money_from_wallet(value)
     return @wallet -= value
  end

  def find_drink_price(pub, drink_name)
    for drink in pub.drinks()
      if pub.pub_has_drink?(drink_name)
        return drink.price()
      end
    end
  end
  
  def buy_drink_from_pub(pub, drink_name)
    price = find_drink_price(pub, drink_name)
    take_money_from_wallet(price)
    pub.add_money_to_till(price)
  end



end
