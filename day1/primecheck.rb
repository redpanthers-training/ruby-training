require 'prime'
puts "Enter a number"

num = gets.chomp.to_i
for i in 2..num/2
if num%i==0
puts " #{num} is not prime"
break
end
puts " #{num} is prime"
end


