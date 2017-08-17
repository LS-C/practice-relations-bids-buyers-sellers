class Seller
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def bids
     Bid.bids.select{|bid|bid.seller == self}
  end

  def self.all
    @@all
  end

  def all_buyers
    self.bids.map {|bid| bid.buyer.name}
    binding.pry
  end

#Methods to write
#SELLER methods
# total $ from bids

#BID methods
# highest bid/bidder
# average of all bid

# BUYER methods
# average bid of one buyer

end
