class CashRegister
  attr_reader :discount
  attr_accessor :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.items << item
    self.total += price * quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * 0.01 * discount).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end


end
