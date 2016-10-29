class Operator
	def method_missing(meth_name, *args)
		check_int=[]
		check_int=meth_name.to_s.split(//).last(10).join
		if /^[0-9]*$/ =~ check_int
			puts "calling #{check_int}"
		else
			puts "Call is not possible"
		end
	end
end
Operator.new.call_9037021307


