#!/usr/bin/env ruby
class Fixnum
	def is_prime
		x=self
		y=x/2
		if x<2 
			return nil
		end
		(2..y).each do |i|
			if x%i == 0 
				return nil
				end
			end
		x
	end
end

def is_empty(x)
	if x==nil
		return true
	end
	false
end

puts (1..1000).map(&:is_prime).reject{ |i| is_empty(i)}
