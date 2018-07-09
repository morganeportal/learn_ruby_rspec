#write your code here
def mettre_le_zero(n)
	if n.to_i < 10
		return "0"+n.to_s
	else 
		return n.to_s
	end
end

def time_string(seconds)
	hour =seconds.to_i / 3600
	minute = (seconds.to_i % 3600)/60
	second = seconds-hour * 3600 - minute * 60

	return mettre_le_zero(hour)+":"+ mettre_le_zero(minute) +":"+ mettre_le_zero(second)
end

puts (17 % 5)
puts(time_string(45))