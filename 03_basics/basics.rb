# write your code here
def who_is_bigger(a,b,c)
	if(a ==nil || b ==nil || c ==nil)
		return("nil detected")
	else
		if(a.to_f<=b.to_f)
			if(b.to_f<=c.to_f)
				return ("c is bigger")
			else
				return ("b is bigger")
			end
		else
			if(a<=c)
				return ("c is bigger")
			else
				return ("a is bigger")
			end
		end
	end
end

def reverse_upcase_noLTA(str)
	str.upcase!()
	str.tr!("L","")
	str.tr!("A","")
	str.tr!("T","")
	str.reverse!()
end

def array_42(array)
	array.select!{|x| x==42}
	if(array !=[])
		return true
	else return false
	end
end

def magic_array(array)
	array.flatten!()
	array.reverse!()
	array.map!{|x| x=x*2}
	array.select!{|x| x%3 !=0}
	array.uniq!()
	array.sort!()
end

puts(magic_array([1,2,5,3,2,2,5]))