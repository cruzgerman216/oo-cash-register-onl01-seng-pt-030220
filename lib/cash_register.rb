class CashRegister
  attr_accessor :total=0, :discount

  def initialize(discount)
    @total = 0
    @discount = discount
  end
end
