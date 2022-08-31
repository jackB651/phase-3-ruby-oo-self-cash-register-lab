class CashRegister
    
    attr_accessor :total, :discount, :dollars
    def initialize(discount = 0)
       @discount = discount
       @total = 0
    end

    def add_item(title, price, ammount = 1)
      @total += price*ammount
    end

    def apply_discount
      if @discount > 0 
        x = @total*discount/100 
        @total = @total - x
        "After the discount, the total comes to $#{@total}."   
      else    
        "There is no discount to apply."  
      end
    end

    def items(a, b)
      items = []
      items.push(a)
      items.push(b)
    end

    def void_last_transaction
    end
end