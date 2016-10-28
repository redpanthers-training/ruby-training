class Operator
	
	def method_missing(method_name,*arg)
		int="#{method_name}".split(//).last(10).join
		
		puts int
		if int.size==10 && int.to_i.to_s.size==int.size
			
			puts "calling"
		else
			puts "not calling"
		end
	end
end
Operator.new.call_9995557770

