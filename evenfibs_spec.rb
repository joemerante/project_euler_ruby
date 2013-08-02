require 'rspec'
require_relative 'evenfibs.rb'

describe "sum even fib numbers with values under 4 million" do 
  it "finds all fib numbers with values less than n" do 
  	expect(fibs(100)).to eq([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end

  it "sums even fib numbers with values under a limit" do 
  	expect(sum_evens(100)).to eq(44) 
  end
end