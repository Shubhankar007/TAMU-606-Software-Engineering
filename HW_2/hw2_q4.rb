#Shubhankar Goswami
#CSCE 606 HW2 Q4
module Enumerable
#Stores all input elements into a single 1D array
#Compares the array to its reverse
    def palindrome?
        arr = []
        self.each do |e| 
            arr.push e
        end
        return arr.flatten.reverse == arr.flatten
    end
end
#puts [1,2,3,2,1].palindrome?