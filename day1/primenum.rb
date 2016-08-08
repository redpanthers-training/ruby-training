i=ARGV[0].to_i
flag=0
(2..i/2).each do |j|
	if i%j==0
		flag = 1
	end
end
if flag==0
	puts "Prime Number"
else
	puts "Not Prime Number"
end

