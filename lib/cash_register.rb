class CashRegister
attr_accessor :total :items
@items = {}

def initialize
  @total = 0
  discount = self.new - self.new*0.2
end

def total
running_total = []
  items.collect.each do |item, price|
  running_total << price
  end
  
end
    
end

def add_item(item)

end

def items
  
end

def apply_discount
  discount = @total*.2
end 

def void_last_item
  
end

end