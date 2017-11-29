class Pub

attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till.to_f
    @drinks = drinks
  end



end
