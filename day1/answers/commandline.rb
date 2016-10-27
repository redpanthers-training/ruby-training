
ARGV.each do|a|
 n=ARGV[0]
 n = n.to_i
 def prime(n)
  is_prime = true
   for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
   end
   if is_prime
    puts "#{n} is prime!"
   else
    puts "#{n} is not prime."
   end
 end
 prime(n)
end
