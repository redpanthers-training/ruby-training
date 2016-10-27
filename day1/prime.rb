for i in (2..10*8) do
    for j in (2..i) do
      break if i%j == 0
     end
   puts i if i==j
end
