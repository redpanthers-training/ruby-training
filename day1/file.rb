#!/bin/ruby -w
file = File.new("sorted.csv","w")

list=File.open("sample.txt", "r").read.split(" ").sort

list.each do |i|
  file.syswrite("#{i},#{i.length}\n")
end
