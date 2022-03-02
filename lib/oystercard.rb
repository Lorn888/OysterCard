class Oystercard
  attr_reader :balance
  
  def initialize(limit = 90)
    @LIMIT = limit
    @balance = 0
  end

  def top_up(amount)
    exceeds?(amount)
    @balance += amount
  end  
 
  def exceeds?(amount) 
    @balance + amount > @LIMIT ? (raise_error "Reached limit £#{@LIMIT}") : false
  end   


end

