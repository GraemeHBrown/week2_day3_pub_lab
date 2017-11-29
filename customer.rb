class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet.to_f
  end

end
