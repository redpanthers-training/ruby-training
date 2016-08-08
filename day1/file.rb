text=File.read("/home/iamfred/sample.txt")
words=text.downcase.split.sort;
out_file=File.new("/home/iamfred/out.csv","w")
(0..words.size-1).each do |i|
  entry=words[i]+","+words[i].length.to_s
  out_file.puts(entry)
end
