require "spec_helper"
require_relative "../stock.rb"
require_relative "../portfolio.rb"

describe Stock do
  it "should check to see if array init includes it's name" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    expect(i.company).to eql("Apple")
  end
  
  it "should check to see if array init includes it's symbol" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    expect(i.symbol).to eql("APPL")
  end
  
  it "should check to see if array init includes it's price per share" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    expect(i.price_per_share).to eql(4000)
  end
  
  it "should check to see if array init includes it's currency" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    expect(i.currency).to eql(:usd)
  end
  
  it "should check to see if array init includes it's quantity" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    expect(i.quantity).to eql(50)
  end
  
  it "should return the Integer value of one share in USD to inr." do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    i.price_in_usd
    expect(i.price_per_share).to eql(4000)
  end
  
  it "should return the total Integer value of one stock's shares" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    i.total_value
    expect(i.total_value).to eql(200000)
  end
  
  it "should return the total Integer value of one stock's shares in USD" do
    i = Stock.new("Apple", "APPL", 4000, :usd, 50)
    i.total_value_usd
    expect(i.total_value_usd).to eql(200000)
  end
  

end

