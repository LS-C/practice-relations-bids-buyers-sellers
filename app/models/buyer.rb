class Buyer
  attr_accessor :name
  @@buyers = []
  def initialize(name)
    @name = name
    @@buyers << self
  end

  def self.buyers
    @@buyers
  end

  def bids
    Bid.bids.select{|bid| bid.buyer == self}
  end

end
