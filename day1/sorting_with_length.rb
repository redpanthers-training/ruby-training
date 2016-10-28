sorted_file = File.open( "sample.txt" ){ |f|  f.read.split.sort }
file = File.open("sample.txt"  , "w")
 file.puts sorted_file
 file.close

require 'csv'
CSV.open("sample.csv", "w") do |csv|
  length=sorted_file.size
  (0..length-1).each do |i|
    csv<<[sorted_file[i],sorted_file[i].size]
end
end