require_relative '../student'
require_relative '../classrom'

describe Student do
  # the let method is used to create a variable that can be used in the tests
  let(:student) { Student.new(18, 'John') }
  let(:classrom) {Classrom.new('Classrom A') }

  describe '#new' do
    it 'creates a new student' do
      expect(student).to be_a(Student)
    end

    it 'has a name' do
      expect(student.name).to eq('John')
    end

    it 'has an age' do
      expect(student.age).to eq(18)
    end

    it 'has a classroom' do
      student.add_classrom(classrom)
      expect(student.classrom.label).to eq('Classrom A')
    end
  end
end
