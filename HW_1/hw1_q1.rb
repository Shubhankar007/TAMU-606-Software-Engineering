def palindrome?(string)
	String string_original = string.downcase.gsub(/\W/,"")
	String string_reverse = string_original.reverse
	puts string_original
	puts string_original == string_reverse
end

palindrome?("A man, a plan, a canal -- Panama")  #=> true
palindrome?("Madam, I'm Adam!")  # => true
palindrome?("Abracadabra")  # => false (nil is also ok)