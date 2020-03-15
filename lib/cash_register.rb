class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
   end

   def add_item(title,price, quantity = 1)
     @total += price*quantity
   end

   def apply_discount
     @total = total*0.8
     @total.to_i
   end
end
