require './person'

class Student < Person
  attr_reader :classrom

  def initialize(classrom, age, parent_permission = true, name = 'Unknown')
    super(age, parent_permission, name)
    @classrom = classrom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
