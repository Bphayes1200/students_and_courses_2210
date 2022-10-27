class Student
    attr_reader :name, :age
 def initialize(options = {})
 @name = options[:name]
 @age = options[:age]
 end      
end 
