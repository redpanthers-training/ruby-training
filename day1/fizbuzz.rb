	#! usr/bin/env ruby

	class Fizbuzz

		NUM = 100

		def print_num
			for i in (0..NUM)  do 
				if(i%5 == 0 && i%3 == 0)
					puts "FizzBuzz"
				elsif i%3 == 0
				 	puts "Fizz"
				elsif i%5 == 0
				 	puts "Buzz"
				else
					puts i
				end    # if else statement
			end    #end for loop
		end    # end method print_num

	end		# end class Fizbuzz

	object = Fizbuzz.new()
	object.print_num