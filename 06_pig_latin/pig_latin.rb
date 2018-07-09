#write your code here
def is_voyelle(letter)
	if "aeiouy".include?(letter.to_s.downcase())
		return true
	else
		return false
	end
end

def translate_word(str)
	if is_voyelle(str[0])                #voyelle-****
		result = str + "ay"
	else								 #consonne-*****

		if is_voyelle(str[1])               #consonne-voyelle-****

			if str[0,2].to_s =="qu"				# q-u-******
				result =str[2,str.size()]+str[0,2]+"ay"

			else							# consonne-voyelle "normal"
				result =str[1,str.size()]+str[0]+"ay"
			end

		else								#consonne-consonne-***

			if str[1,2].to_s == "qu"				#consonne-q-u
				result =str[3,str.size()]+str[0,3]+"ay"

			elsif is_voyelle(str[2])			#consonne-consonne-voyelle
				result =str[2,str.size()]+str[0,2]+"ay"

			else								#consonne-consonne-consonne
				result=str[3,str.size()]+str[0,3]+"ay"
			end

		end
	end

	return result	
end

def translate(str)
	a= str.split(" ")
	result=translate_word(a[0].to_s)
	if str.size()>1
		for i in 1..a.size()-1
			word =translate_word(a[i].to_s)
			result=result + " " + word
		end
	end
	return result

end

