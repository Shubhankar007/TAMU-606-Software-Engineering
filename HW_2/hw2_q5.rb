#Shubhankar Goswami
#CSCE 606 HW2 Q5
class CartesianProduct
    include Enumerable
    def initialize(array1, array2)
        @array1 = array1
        @array2 = array2
    end
#yields the result in Cartesian Product form
    def each
        @array1.each do |x|
            @array2.each { |y| yield [x, y] }
        end
    end
end
#c = CartesianProduct.new([:a,:b,:c], [4,5])
#c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

#c = CartesianProduct.new([:a,:b], [])
#c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)