 if File.readable?( "sample.txt" )
    newfile = File.open( "sample.txt" ){ |f|  f.read.split.sort }
    file=File.open("Sample.txt","w")
    file.puts newfile
    file.close


 else
    puts "File not readable"
 end

require 'csv'
    CSV.open('new-file.csv', 'w') do |csv_object|
  for i in 0..newfile.size-1
    csv_object << [newfile[i],newfile[i].size]
  end
end

