class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items = []
   end

   def add_item(item,price, quantity = 1)
     @price = price
     @total += price*quantity
       if quantity > 1
         i = 0
         while i < quantity
           @items << item
           i += 1
         end
     else
       @items << item
     end
   end

   def apply_discount
       if discount > 0
         @total -= (price * discount)/100
         str =  "After the discount, the total comes to $#{@total.to_i}."
         str
      else
        return "There is no discount to apply."
      end
   end

   def void_last_transaction
    if(@items.empty?)
      @total = 0
    else
      @total -= @price
      @items.pop
    end

   end
end
