#write your code here
def echo(word)
	return(word)
end

def shout(word)
	return word.upcase()
end

def repeat(word,n=2)
	result = word
	for i in 1..n.to_i-1
		result=result+" "+word
	end
	return result
end

def start_of_word(word, n)
	result=""
	s=word.size()
	m=[s,n.to_i].min()
	for i in 0..m-1
		result=result+word[i]
	end
	return result
end

def first_word(str)
	return(str.split(" ")[0])
end

def titleize(title)
	a =title.split(" ")
	a[0].capitalize!()
	little_words =["the","and","a","an","this","that","with","to","who","was","am","were","if","or","than"]
	result=a[0].to_s
	for i in 1..a.size()-1
		if little_words.include?(a[i])
			result=result+" "+a[i].to_s
		else
			result=result+" "+a[i].capitalize!()
		end
	end
	return result
end

puts(titleize("hello to the world"))