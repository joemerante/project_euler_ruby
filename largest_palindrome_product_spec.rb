# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

require 'rspec'
require_relative 'largest_palindrome_product'

describe "largest palindrome products" do 
  it "generates an array of numbers containing n digits" do 
  	expect(n_digits_array(2)).to eql((10..99).to_a)
  end

  it "finds the largest palindrome product of two n-digit numbers" do 
  	expect(largest_palindrome_product(2)).to eql(9009)
  	expect(largest_palindrome_product(3)).to eql(906609)
  end

end