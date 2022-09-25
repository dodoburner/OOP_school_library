require './person'

class Student < Person
  attr_reader :classrom

  def initialize(classrom, age, name = 'Unknown', parent_permission: true)
    super(age, parent_permission, name)
    @classrom = classrom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
