class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = "no")
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    if quantity
      self_total = price.to_i * quantity
    else
      self_total = price.to_i
    end
    total += self_total
    items << title
    items << self_total
    self.last_transaction = [title, self_total]
  end

  def apply_discount
    if @discount == "no"
      puts "There is no discount to apply."
    else
      discounted_total = total * 0.8
    end
    discounted_total
  end 

  def void_last_item
    total = total - @last_transaction
    total
  end

end