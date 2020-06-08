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

  def add_item(title, price, quantity=1)
    self_total = price * quantity
    items[title] = self_total
    self.last_transaction = {title => self_total}
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