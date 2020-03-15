class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
   end

   def add_item(title,price, quantity = 1)
     @price = price
     @total += price*quantity
       if quantity > 1
       counter = 0
       while counter < quantity
         @items << item
         counter += 1
       end
     else
       @items << item
     end
   end

   def apply_discount
     @total = price * discount
     str =  "After the discount, the total comes to $#{@total.to_i}."
     str
   end
end
