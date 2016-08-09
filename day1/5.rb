#!/usr/bin/env ruby

words = File.open( "/home/xcavenger/ruby-training/day1/sample.txt" ){ |f|  f.read.split.sort }

puts words

file = File.open("/home/xcavenger/ruby-training/day1/sample.txt"  , "w")
file.puts words
file.close


require 'csv'
CSV.open("/home/xcavenger/ruby-training/day1/mycsv.csv", "w") do |csv|

(0..words.size-1).each do |i|
	puts words[i]
	puts words[i].size
	csv<<[words[i],words[i].size]
end
end