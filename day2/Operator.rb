#!/bin/ruby -w

class Operator

  def method_missing(method_name,*args)
    m = method_name.to_s.split("_")
    n = Integer(m[1]) rescue false
    puts "Calling #{m[1]}" if m[1].length==10 and n
    puts "The argument should be an integer and should be a 10 degit number" if !n
  end
  
end

Operator.new.call_8281232380