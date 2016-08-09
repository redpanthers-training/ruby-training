#!/usr/bin/env ruby

list= "Bob loves dogs".split
x= list.size-1
(0..x).each do |i|
	y=x-i
	print list[y].downcase+" "
end
puts