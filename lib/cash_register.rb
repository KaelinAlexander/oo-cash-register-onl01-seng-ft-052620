class CashRegister
attr_accessor :total, :items
@items = {}

  def initialize
    @total = 0
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