reverser = Proc.new{|rev_me| rev_me.chars.inject([]){|r,c| r.unshift c}.join}
str=reverser.call("Bob loves dogs").split.map {|w| reverser.call(w)}.join(' ')
puts str
