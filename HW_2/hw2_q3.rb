#Shubhankar Goswami
#CSCE 606 HW2 Q3
class String
#compares the input string to its reverse
    def palindrome?
        String string_original = self.gsub(/\W/, '').downcase
        String string_reverse = self.gsub(/\W/, '').downcase.reverse
        return string_original == string_reverse
    end
end
#puts "foof".palindrome?