def multiples(n, limit)
  a = []
  i = n
  while i < limit
    a.push(i)
    i += n
  end
  a
end

def sumultiples(n1, n2, limit)
	(multiples(n1, limit) + multiples(n2, limit)).uniq.reduce(:+)
end

# output the answer
# puts sumultiples(3, 5, 1000)