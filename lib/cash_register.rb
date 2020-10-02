class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = {}
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items[title] = [price, quantity]
  end
  
  def items
    items.keys
  end
  
  def apply_discount
    if discount
      self.total -= total * discount / 100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
     self.total -= items[-1][0] * items[-1][1]
  end
  
end
























# require 'pry'
# class CashRegister

#   attr_accessor :total, :discount

#   def initialize(discount = nil)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
  
#   def add_item(title, price, quantity = 1)
#     self.total += price * quantity
#     @items.concat([title] * quantity)
#     @last = price * quantity
#   end

#   def apply_discount
#     if self.discount
#       self.total -= self.total * discount / 100
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
  
#   def items
#     @items
#   end
  
#   def void_last_transaction
#     self.total -= @last
#   end

# end
  
=begin

  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @price = {}
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @price[title] = price*quantity
    quantity.times do
      @items << title
    end
  end
  
  def items
    @items 
  end
  
  def apply_discount
    if discount
      @total = @total - @discount * @total / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
      @total = @total - @price[@items[-1]]
  end

end
=end
