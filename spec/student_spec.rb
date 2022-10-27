require './lib/student'

RSpec.describe Student do
  describe '#initialize' do 
    it 'will have a name' do 
      student = Student.new({name: "Morgan", age: 21})
  # require 'pry'; binding.pry
      expect(student.name).to eq("Morgan")
    end 

    it 'will have an age' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.age).to eq(21)
    end
  end 
end