class Course
  attr_reader :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity 
    @students = []
  end 



  def full?
    if students.count < 2 
      false 
    else 
      true
    end 
  end 

  def enroll(student)
    new_student = student
    # require 'pry'; binding.pry
    @students << new_student
  end 

end 
