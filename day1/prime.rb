#!/usr/bin/ruby -w

f=1
@i=0
(1..1000000000).map{|number|(2..number).map{ |i| @i=i
		break if number%i==0
			}
	if f==1 and number==@i
		puts number
	end
        }
