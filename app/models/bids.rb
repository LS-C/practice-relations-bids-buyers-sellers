class Bid
  attr_accessor :amount, :seller, :buyer
    @@bids = []
  def initialize(amount, seller, buyer)
    @amount = amount
    @seller = seller
    @buyer = buyer
    @@bids << self
  end

  def self.bids
    @@bids
  end

end
