class Fixnum
  def is_prime
    x=self;
    half=x/2;
    status=true;
    (2..half).each do |i|
    rem=x%i;
    status=false if rem==0;
    break if status==false
    end
    status=true if x==2;
    if status==true
     x
    else
			x=false;
    end
  end
end
primes=(1..10000).map(&:is_prime)
primes.each do |i|
  puts i if i!=false
end
