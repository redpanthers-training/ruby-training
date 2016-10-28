require 'prime'
x=gets.chomp.to_i
out=Prime.prime?(x)
if out==false
	puts 'not prime'
	else out==true
		puts 'prime'
end
