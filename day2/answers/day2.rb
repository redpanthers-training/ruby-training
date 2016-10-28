class Operator
 def method_missing(method_name,*args)
 	my_string=method_name
 	int="#{my_string}".split(//).last(10).join
	puts int
 	if int.size == 10 && int.to_i.to_s.size == int.size
 		print "calling.."
 	else
 		print "not a valid number"
 	end
 end	
end
Operator.new.call_1234567890
