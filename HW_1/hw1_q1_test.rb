def anagram (words)
	hash={ }
	words.each do |word|
		string_to_compare=word.downcase.chars.sort.join
		
		if hash[string_to_compare]
			hash[string_to_compare].push(word)
		else
			hash[string_to_compare]=[word]
		end
	end
	
	combined_anagram=[]
	hash.each do |key,value|
		combined_anagram.push(value)
	end

	puts combined_anagram

end
	
Array words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
anagram(words)