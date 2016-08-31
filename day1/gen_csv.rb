	#! usr/bin/env ruby
	require 'csv'

	class Gen_csv

		def csv_gen
			doc = File.open('sample.txt').read
			data = doc.split(/[\s,.\n]+/)
			sorted_data = data.sort

			csv_file = CSV.open("file.csv", "w") do |csv|
				sorted_data.each do |data|
					csv << [data, data.length.to_i]
				end
			end
			puts "File is successfully generated at root folder"	

		end		#end class csv_gen

	end		#end class Gen_csv

	object = Gen_csv.new()
	object.csv_gen
