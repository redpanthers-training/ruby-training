text = File.read("data.txt")
word_arr=text.downcase.split.sort
File.open("sample.txt", "w") do |file|
	word_arr.each {|n| file.puts(n)}
end

require 'csv'
CSV.open("sample.csv", "w") do |csv|
	len=word_arr.count
	(0..len-1).each do |i|
		word=word_arr[i].match(/^[a-z]*/).to_s.size
		csv<<[word_arr[i],word]
		end
	end
