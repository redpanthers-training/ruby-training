puts (1..100).collect { |i| (fb = [["Fizz"][i % 3], ["Buzz"][i % 5]].compact.join).empty? ? i : fb }
