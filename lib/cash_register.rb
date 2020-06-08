class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

  def initialize
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
  end

  def add_item(item)
    
  end

  def items
    
  end

  def apply_discount
  
  end 

  def void_last_item
    
  end

end