class Pub

attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till.to_f
    @drinks = drinks
  end

  def pub_has_drink?(drink_name)
    for drink in @drinks
      return true if drink.name == drink_name
    end
    return false
  end

  def add_money_to_till(value)
    return @till += value
  end

end
