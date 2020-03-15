class CashRegister
  attr_accessor :total, :discount

  def initialize(discount)
    self.total = 0
    @discount = discount
  end
end
