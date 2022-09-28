require './student.rb'
require './teacher.rb'

$people = []
$books = []

def list_all_books()
end

def list_all_people()
end

def create_a_person()
  print "Do you want to create a student (1) or a teacher (2)?
  [Input the number]: "
  answer = gets.chomp

  unless answer == "1"
    print "Specialization: " 
    specialization = gets.chomp
  end

  print "Age: "
  age = gets.chomp

  print "Name: "
  name = gets.chomp

  unless answer == "2"
    print "Has parent permission? [Y/N]: " 
    parent_permission = gets.chomp.capitalize
    if parent_permission == "Y"
      parent_permission = true
    elsif parent_permission == "N"
      parent_permission = false
    end
  end

  $people << Student.new(age, name, parent_permission) unless answer == 2
  $people << Teacher.new(specialization, age, name) unless answer == 1

  puts 'Person created successfully'
end

def create_a_book()
end

def create_a_rental()
end

def list_all_rentals_for_a_given_person_id()
end