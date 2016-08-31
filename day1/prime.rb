	#!/usr/bin/env ruby

	class Prime

		MAX = 1000000000

		def prime_numbers 
			print "Prime numbers between 0 and #{MAX} are...\n"
			
		    for i in (2..MAX) do
		        for j in (2..i) do
		            break if i%j == 0
		        end
		        print "#{i} \n" if i == j
		    end
		end		# end method prime_number

	end		#end class Prime	

	object = Prime.new()
	object.prime_numbers