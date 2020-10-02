class CashRegister
  
  attr_accessor :total, :discount, :items, :last
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.last = price * quantity
    self.total += price * quantity
    self.items += [title] * quantity
  end

  def apply_discount
    if discount
      self.total -= total * discount / 100
      "After the discount, the total comes to $#{self.total}." 
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
     self.total -= last
  end
  
end