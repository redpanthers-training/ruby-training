class Array
 def rev
  arr=self
  size=arr.size-1;
  reversed=Array.new(arr.size)
  revsize=size;
  (0..size).each do |index|
    reversed[revsize-index]=arr[index];
  end
  reversed
 end	
end
st1="Bob Loves Dog"
words=st1.split().rev
puts words
