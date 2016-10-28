require 'prime'
num=Prime.take_while {|p| p < 1000000000 } 
File.open('test.txt','w') do |f2|
	f2.puts num
end
