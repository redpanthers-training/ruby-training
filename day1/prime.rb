(1..1000000000).each do |i|
	flag=0
	(2..i/2).each do |j|
		if i%j==0
			flag = 1
		end
	end
	if flag==0
		puts i
	else
		flag=0
	end
end

