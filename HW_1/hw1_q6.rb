#Shubhankar Goswami
#CSCE 606 HW1 Q6
class Dessert
    attr_accessor :name
    attr_accessor :calories
    #Initialize class inputs
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    #Class Methods
    def healthy?
        if calories < 200
            return true
        end
        return false
    end
    def delicious?
        return true 
    end
end
#extended class
class JellyBean < Dessert
    attr_accessor :flavor
    #Initialize extended class inputs
    def initialize(name, calories, flavor)
        @flavor = flavor
    end
    #Class Methods
    def delicious?
        if @flavor == "black licorice"
            return false
        end
        return true
    end
end

d = Dessert.new("jelly",300)
j = JellyBean.new("jelly",300,"black licorice")
puts d.healthy?
puts d.delicious?
puts j.delicious?