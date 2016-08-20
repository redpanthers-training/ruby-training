#!/bin/ruby -w

class Operator

  def method_missing(method_name,*args)
    m = method_name.to_s.split("_")
    n = Integer(m[1]) rescue false
    return puts "Calling #{m[1]}" if m[1].length==10 and n
    puts "Invalid" 
  end
  
end

Operator.new.call_8281232380
Operator.new.call_828123238
Operator.new.call_82812323dafgrgg