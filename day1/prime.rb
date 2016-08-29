#!/usr/bin/env ruby

max = 1000000000

def prime_numbers max
	print "Prime numbers between 0 and #{max} are...\n"
	
    for i in (2..max) do
        for j in (2..i) do
            break if i%j == 0
        end
        print "#{i} \n" if i == j
    end
end

prime_numbers max