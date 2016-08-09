#!/usr/bin/env ruby


def is_m3(x)
	str=""
	if x%3==0
		str+= "Fizz"
	end
	if x%5==0
		str+="Buzz"
	end
	if str==""
		str=x.to_s
	end
	str
end


def is_empty(x)
	if x==""
		return true
	end
	false
end

puts (1..100).map{|i| is_m3(i)}.reject{ |i| is_empty(i)}
