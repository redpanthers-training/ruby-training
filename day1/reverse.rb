#!/usr/bin/ruby -w

var="Bob loves dogs".split(" ")

len=var.length
first=0
last=len-1
while first!=last
	t=var[first]
	var[first]=var[last]
	var[last]=t
	first+=1
	last-=1
end

puts var.join(" ")
