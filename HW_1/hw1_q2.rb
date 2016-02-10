#Shubhankar Goswami
#CSCE 606 HW1 Q2
def count_words(string)
    hash_new = Hash.new 0
    words = string.downcase.gsub(/\W/ , " ").split
    words.each do |i|
		hash_new[i] += 1
    end
    return hash_new
end

#puts count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
#puts count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}