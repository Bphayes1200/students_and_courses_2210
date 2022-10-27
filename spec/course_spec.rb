require './lib/student'
require './lib/course'

RSpec.describe Course do 
  describe '#initialize' do 
    it 'will have a course name' do
      course = Course.new("Calculus", 2)

      expect(course.name).to eq("Calculus")
    end 

      it 'will have a capacity' do 
        course = Course.new("Calculus", 2)

        expect(course.capacity).to eq(2)
      end
  end
  describe '#students' do 
    it 'will have an empty array of students' do 
      course = Course.new("Calculus", 2)
      
      expect(course.students).to eq([])
    end 
  end 

  describe '#full?' do 
    it 'will check to see if class is full' do 
      course = Course.new("Calculus", 2)

      expect(course.full?).to eq(false)
    end
  end 

  describe '#enroll' do 
    it 'will enroll students' do 
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})   
      course.enroll(student1)
# require 'pry'; binding.pry
      expect(course.students.count).to eq(1)

      course.enroll(student2)

      expect(course.students.count).to eq(2)

    end 
  end 
end 