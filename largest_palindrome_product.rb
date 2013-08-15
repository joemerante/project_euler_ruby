def n_digits_array(n)
	case 
	when n == 2
		return (10..99).to_a
	when n == 3 
		return (100..999).to_a
	end
end

def largest_palindrome_product(n)
	begin
		arr1 = n_digits_array(n).reverse
		arr2 = arr1
	 
	  max = 0
		arr1.each do |a|
			arr2.each do |b|  # does 99 x 99...10
				next unless (a * b).to_s.length == 2 * n
				(a * b).to_s == (a * b).to_s.reverse && a * b > max ? max = a * b : max
			end
		end
		max

	rescue
		"Try 2 or 3 until the above solution is more elegant and can handle higher numbers."
	end
end
