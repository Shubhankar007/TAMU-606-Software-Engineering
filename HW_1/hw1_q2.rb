def count_words(string)
    hash_table = Hash.new 0
    word_buffer = string.downcase.gsub(/\W/ , " ").split
    word_buffer.each do |word|
		hash_table[word] += 1
    end
    puts hash_table
end

count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}