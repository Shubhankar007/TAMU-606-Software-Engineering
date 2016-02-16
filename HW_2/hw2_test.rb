class Class
 def attr_accessor_with_history(attr_name)
   attr_name = attr_name.to_s   # make sure it's a string
   attr_reader attr_name        # create the attribute's getter
   attr_reader attr_name+"_history" # create bar_history getter
   class_eval %Q{
   	"your code here, use %Q for multiline strings"
   	def initialize
   		@history_list = Array.new
   	end
   	
   	def bar
   		@bar
   	end
   	
   	def bar=(bar)
   		if @history_list.empty?
   			@history_list.push(nil)
   		end
   		@history_list.push(bar)
   		@bar = bar
   	end
   	
   	def bar_history
   		if @history_list.empty?
   			return nil
   		else 
   			puts @history_list[0..@history_list.length - 1]
   		end
   	end
   }
 end
end
class Foo
 attr_accessor_with_history :bar
end
f = Foo.new
f.bar = 1
f.bar = 2
f.bar_history # => if your code works, should be [nil,1,2]