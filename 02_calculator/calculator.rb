#write your code here
def add(x,y)
	return(x.to_f + y.to_f)
end

def subtract(x,y)
	return(x.to_f-y.to_f)
end

def sum(array)
	s=0
	for i in array
		s=s+i.to_f
	end
	return s
end

def multiply(x,y)
	return x.to_f*y.to_f
end

def power(x,n)
	result=1
	n.to_i.times do 
		result=result*x.to_f
	end
	return result
end

def factorial(n)1
	if n.to_i==0
		return 1
	else
		result=1
		for i in 1..n.to_i
			result=result*i
		end
		return result
	end
end
