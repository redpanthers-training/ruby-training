class Fixnum
	def mult_three
		status=false;
		status=true if (self%3)==0
		#status
	end
	def mult_five
		status=false;
		status=true if (self%5)==0
		#status
	end
end

(1..30).each do |num|
	if(num.mult_three && num.mult_five)
	then
		puts num.to_s+" FIzzBuzz";
	elsif(num.mult_three)
	then
		puts num.to_s+" Fizz";
	elsif(num.mult_five)
		puts num.to_s+" Buzz";
	end	
end

