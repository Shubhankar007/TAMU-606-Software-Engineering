#Shubhankar Goswami
#CSCE 606 HW1 Q1
def palindrome?(string)
	String string_original = string.downcase.gsub(/\W/,"")
	String string_reverse = string_original.reverse
	puts string_original
	return string_original == string_reverse
end

#puts palindrome?("A man, a plan, a canal -- Panama")  #=> true
#puts palindrome?("Madam, I'm Adam!")  # => true
#puts palindrome?("Abracadabra")  # => false (nil is also ok)