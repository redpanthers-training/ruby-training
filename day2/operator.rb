class Operator
	def method_missing(call, *args)
		a=[]
		a=call.to_s.split(//).last(10).join
		if /^(?<num>\d+)$/ =~ a
			p "calling #{a}"
		else
			puts "Call can't be processed"
		end
	end
end
Operator.new.call_9995557770