arr, new_arr = ["bob","loves","dog"], []
for i in 0...arr.length do
   new_arr << arr[arr.length - 1 - i]
end
print new_arr
