class BankAccount

  attr_accessor :holder_name, :amount, :type
  #attr_accessor = reader + writer

  def initialize(holder_name, amount, type)
    @holder_name = holder_name
    @amount = amount
    @type = type
  end

  def pay_in(amount)
    @amount += amount
    #self.amount
  end


  def monthly_fee
    @amount -= 50 if (@type == 'business')
    @amount -= 10 if (@type == 'personal')
    #(guard statement)
  end


    #def monthly_fee(amount)
    #@amount -= 50

    #end

    # def holder_name
    #   return @holder_name
    # end
    #
    # def amount
    #   return @amount
    # end
    #
    # def type
    #   return @type
    # end


    # def set_holder_name(name)
    #   @holder_name = name
    # end
    #
    #
    #
    # def set_amount(value)
    #   @amount = value
    # end
    #
    # def set_type(type)
    #   @type = type
    # end


  end
