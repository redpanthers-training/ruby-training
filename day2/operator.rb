class Operator
  def method_missing(name,*args,&block)
    length=name.length
    status=true
    status=false if length!=15 
    i=1
    while(i<=10 && status!=false)
      n=name[length-i]
      if n=="0"||n=="1"||n=="2"||n=="3"||n=="4"||n=="5"||n=="6"||n=="7"||n=="8"||n=="9"
        status=true
      else
        status=false
      end
      i=i+1  
    end
    if status==true
      puts "calling.."
    else
      puts "invalid number"
    end
  end
end
Operator.new.call_p123456789
