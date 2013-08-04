# basic implementation of the sieve of eratosthenes
# square each element in the range, step through and zero out its multiples, remaining ones are prime
def primes(n)
  arr = [0, 0] + (2..n).to_a
  arr.each do |i|
    if arr[i].nonzero?
      (i**2..n).step(i) {|x| arr[x] = 0}
    end
  end
  arr.find_all {|m| m.nonzero?}
end

def prime_factors(n)
	pfs = []

  (2..n).each do |num| 
    if n % num == 0
      pfs.push(num)
      return pfs if pfs.inject(:*) == n
      prime_factors(n / num)
    end
  end
end

def largest_prime_factor(n)
  prime_factors(n).max
end

# found this nifty solution while comparing mine with others'
# def prime_factors(n)
#   return [] if n == 1
#   factor = (2..n).find {|x| n % x == 0}
#   [factor] + prime_factors(n / factor)
# end

