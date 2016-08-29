	#! usr/bin/env ruby

	class Gen_csv

		def csv_gen
			doc = File.open('sample.txt').read
			data = doc.split(/[\s,.\n]+/)
			sorted_data = data.sort
			sorted_data.each do |data|
				puts "#{data}, #{data.length.to_i}"
			end

		end		#end class csv_gen

	end		#end class Gen_csv

	object = Gen_csv.new()
	object.csv_gen
