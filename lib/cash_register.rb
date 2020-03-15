class CashRegister
  attr_reader :total, :discount

  def initialize(discount)
    @total = 0
    @discount = discount
  end
end
