require './app.rb'

def main
  exit = false

  puts "Please choose and option by entering a number: \n
  1 - List all books \n
  2 - List all people \n
  3 - Create a person \n
  4 - Create a book \n
  5 - Create a rental \n
  6 - List all rentals for a given person id \n
  7 - exit "

  response = gets.to_i

  case response
  when 1
    list_all_books()
  when 2
    list_all_people()
  when 3
    create_a_person()
  when 4
    create_a_book()
  when 5
    create_a_rental()
  when 6
    list_all_rentals_for_a_given_person_id()
  when 7
    exit = true
  else 
    puts "Please enter a valid input"
  end

  main() unless exit == true
end

main()