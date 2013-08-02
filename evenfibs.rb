# fib number at the nth spot
def fib(n)
  return n if (0..1).include? n 
	fib(n - 1) + fib(n - 2)
end


# collection of fib numbers with values under limit; start with n=2 to match the example output
def fibs(limit, n=2)
	@a ||= []
	f = fib(n)
	if f < limit 
		@a.push(f) 
		n += 1
		fibs(limit, n)
	else
		@a
	end
end

# collection of even fib's with values less than n
def sum_evens(limit) 
  e = []
  fibs(limit).each do |fib|
  	e << fib if fib.even?
  end
  e.inject(:+)
end

# get the answer
# puts sum_evens(4000000)