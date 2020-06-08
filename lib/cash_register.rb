class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = {}
  end

  def total
  prices = []
    items.collect.each do |item, price|
    prices << price
    end
  prices.inject(0) {|sum, i|  sum + i }
  new_total = total + prices
  new_total
  end

  def add_item(name, price, quantity=1)
    new_item 
  end

  def items
    
  end

  def apply_discount
    if @discount != 0
      total = total * 0.8
    end
    total
  end 

  def void_last_item
    
  end

end