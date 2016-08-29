  #! usr/bin/env ruby

  #Method for checking condition wheater it is less than billion or not 
  def check_cond(num)
  	if num < 10
			true
		else
			puts "Number not less than billion. Try again..."
			false
		end
  end

  #Method foe checking prime
  def check_prime_num(num)		
		flag = true
		if num == 1 
		  flag = false
		else
			for i in (2..num-1) do
        if num%i == 0
        	flag = false
        	break
        end
      end			
	  end

		if flag 
		  puts "Prime"	
		else
		 	puts "Not Prime"	
		end
	end

  # accept a number
  def accept_num
  	puts "Enter a number below billion"
  	num = gets.chomp.to_i
  end

	num = accept_num
	while !check_cond(num)
		num = accept_num
	end

	check_prime_num(num)
	


	
