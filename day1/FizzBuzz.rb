class Fixnum
 def mult_three
    status=false;
    status=true if (self%3)==0
  end
  def mult_five
    status=false;
    status=true if (self%5)==0
  end
end
(1..100).each do |num|
  if(num.mult_three && num.mult_five)
		puts num.to_s+" FIzzBuzz";
  elsif(num.mult_three)
    puts num.to_s+" Fizz";
	elsif(num.mult_five)
    puts num.to_s+" Buzz";
  end	
end
