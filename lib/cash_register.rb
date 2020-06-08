class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def items
    
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      total = total * 0.8
      total
    end
  end 

  def void_last_item
    total = total - @last_transaction
    total
  end

end