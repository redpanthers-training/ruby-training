#!/usr/bin/ruby -w

numbers=(1..100).to_a

numbers.each do |i|
  j=i-1
  numbers[j]="Fizz" if i%3==0
  numbers[j]="Buzz" if i%5==0
  numbers[j]="FizzBuzz" if i%3==0 and i%5==0
end

puts numbers
