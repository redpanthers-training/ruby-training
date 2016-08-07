#!/usr/bin/env ruby

def is_prime3(x)
	y=x/2
	if x<2 
		return false
	end
	(2..y).each do |i|
		if x%i == 0 
			return "Not Prime"
			end
		end
	"Prime"
end


v1 = ARGV[0]
puts is_prime3(v1.to_i)
