	#! usr/bin/env ruby

	class Str_reverse

		STR = "Bob loves dogs"

		def reverse_str

			words = STR.split(' ')
			puts "Before reverse"
			puts STR
			len = words.length
			rev_words = Array.new(len)
			a = 0
			b = len-1

			# Reversing loop
			len.times do
         rev_words[a] = words[b]
         a += 1
         b -= 1 
			end

			rev_STR = rev_words.join(' ')
			puts "==============="
			puts "After reverse"
			puts rev_STR
		end    #end method reverse_str

	end		#end class Str_reverse

	object = Str_reverse.new()
	object.reverse_str
