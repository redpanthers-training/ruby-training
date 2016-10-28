sorted_word = File.open( "sample.txt" ){ |f|  f.read.split.sort }
file = File.open("sample.txt"  , "w")
 file.puts sorted_word
 file.close

require 'csv'
CSV.open("sample.csv", "w") do |csv|
  len=sorted_word.size
  (0..len-1).each do |i|
    csv<<[sorted_word[i],sorted_word[i].size]
end
end

