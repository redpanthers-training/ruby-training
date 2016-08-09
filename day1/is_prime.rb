#!/usr/bin/env ruby
def print_it(x)
  x=x.to_i
  half=x/2;
  status=true;
  (2..half).each do |i|
    rem=x%i;
    status=false if rem==0;
    break if status==false
  end
  status=true if x==2;
  puts status
end
print_it(ARGV[0])
