
puts "enter a number"
a = gets.to_i
for i in (2..a) do
    if a%i == 0
        p "#{a} not a prime number."
        break
    end
p "#{a} is a prime number." if a == i
end




