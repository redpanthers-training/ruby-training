#!/usr/bin/env ruby
class Operator  
  def method_missing(m) 
    number = m.to_s[m.size-10,m.size]
    puts number
    if number.size==10  && number.to_i.to_s.size == number.size
      puts "Calling "+number
    else
      puts "Please provide a valid number"
    end    
  end  
end

Operator.new.call_1234567890

