require 'rspec'
require_relative 'sumultiples'

describe "Find the sum of all the multiples of 3 or 5 below 1000" do 
  it "finds all the multiples of a number up to a limit" do 
  	multiples(3, 10).should == [3, 6, 9]
  	multiples(5, 20).should == [5, 10, 15]
  end

  it "sums multiples of three or five up to a limit" do 
  	sumultiples(3, 5, 10).should == 23
  end
end 
