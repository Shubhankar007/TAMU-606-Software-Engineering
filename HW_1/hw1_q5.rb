def sort(str)
	return str.chars.sort.join
end
def anagram(word)
	$i = 0
	result = Array.new
	while $i<word.length do
		$j = 0
		$k = 1
		list = Array.new
		list[0] = word[$i]
		while $j<word.length do
			if $i != $j
				if sort(word[$i]) == sort(word[$j])
					list[$k] = word[$j]
					word.delete(word[$j])
					$k += 1
				end
			end
			$j += 1
		end
		result[$i] = list
		$i += 1
	end
	puts "#{result}"
end
#str.chars.sort { |a, b| a.casecmp(b) } .join
Array words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
anagram(words)