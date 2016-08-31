	#! usr/bin/env ruby

	class Operator

	 	def method_missing name, *paras 
	   	name = name.to_s.split('_')
	   	num_format = /[0-9]{10}/
	   	 if name[1].match(num_format)
	   	 	puts name[1]
	   	 else
	   	 	puts "Either not an integer or number size not equal to 10"
	   	 end

	 	end		#end method accept_method

	end		#end class operator

	#object = Operator.new
	Operator.new.call_987654
	Operator.new.call_9876543210
	Operator.new.call_asdffg




