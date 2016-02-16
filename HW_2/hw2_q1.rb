#Shubhankar Goswami
#CSCE 606 HW2 Q1
#Defines the new accessor class that can store the history
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_accessor attr_name
    attr_accessor attr_name + "_history"
#checks the current stored history 
#adds new inputs to the history
    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name} = value
        if @#{attr_name}_history.nil?
          @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history.push(value)
      end
    }
  end
end
#class that calls the new accessor tool
class Foo
  attr_accessor_with_history :bar
end
#f = Foo.new
#f.bar = 1
#f.bar = 2
#puts "#{f.bar_history}" # => if your code works, should be [nil,1,2]