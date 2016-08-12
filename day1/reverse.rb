x="Bob Loves Dogs"
puts x
items = x.split(" ")
s = items.length
(1..s).each do |i|
	print items.pop + " "
end

