class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
   end

   def cash_register.add_item(item)
     @items << item
   end
end
