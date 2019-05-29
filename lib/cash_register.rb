class CashRegister
  attr_reader :discount
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    self.total -= (self.total * 0.01 * discount).to_i
    return "After the discount, the total comes to $#{self.total}."
  end

end
