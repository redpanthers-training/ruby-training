reverse = Proc.new{|rev_me| rev_me.chars.inject([]){|r,c| r.unshift c}.join}
rev=reverse.call("Bob loves dogs").split.map {|w| reverse.call(w)}.join('')
puts rev
