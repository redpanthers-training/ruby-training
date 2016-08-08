#!/usr/bin/ruby -w

f=1
@i=0
number=ARGV[0].to_i


(2..number).map{|i| @i=i
  break if number%i==0
  f=1}

if f==1 and number==@i
  puts "#{number} is prime" 
else
  puts "#{number} is not a prime"
end
