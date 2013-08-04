# first tried calculating all primes up to n, soon realized that's an insanely inefficient way to do it.
# for reference, basic implementation of the Sieve of Eratosthenes
# # square each element in the range, step through and zero out its multiples, remaining ones are prime

# def primes(n)
#   arr = [0, 0] + (2..n).to_a
#   arr.each do |i|
#     if arr[i].nonzero?
#       (i**2..n).step(i) {|x| arr[x] = 0}
#     end
#   end
#   arr.find_all {|m| m.nonzero?}
# end

# Solution
# example where n = 147 to the right of the colon, each iteration separated by semicolon
# starting at 2 (the first prime), collect factors of n: n = 147, 3 is first; n = 49, 7 is next [3,7]; n = 7, next is 7 [3,7,7]
# if multiplying the collected factors equals n, exit and return the factors: false; false; true, exit
# otherwise repeat the process where n equals n divided by the current factor: repeat with 49; repeat with 7

# improved - you can stop checking for primes at a large number's square root
def prime_factors(n)
	pfs = []

  (2..Math.sqrt(n)).each do |num| 
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

# found this nifty solution while comparing mine with others' https://gist.github.com/jtallant/3030295
# def prime_factors(n)
#   return [] if n == 1
#   factor = (2..n).find {|x| n % x == 0}
#   [factor] + prime_factors(n / factor)
# end

