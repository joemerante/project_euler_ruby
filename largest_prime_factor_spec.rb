require 'rspec'
require_relative 'largest_prime_factor'

describe "The Largest Prime Factor of a number" do 
	it "calculates all prime numbers up to n" do 
		expect(primes(6)).to eq([2,3,5])
	end

	it "calculates prime number factors of n" do 
		expect(prime_factors(6)).to eq([2,3])
		expect(prime_factors(13195)).to eq([5, 7, 13, 29])
	end

	it "finds the largest prime factor of n" do 
		expect(largest_prime_factor(13195)).to eq(29)
	end
end