require './app'

def query_method
  puts "Please choose an option by entering a number: \n
  1 - List all books \n
  2 - List all people \n
  3 - Create a person \n
  4 - Create a book \n
  5 - Create a rental \n
  6 - List all rentals for a given person id \n
  7 - exit "
  gets.to_i
end

def main(app = App.new)
  input = query_method
  if input <= 6 && input >= 0
    app.return_method(input)
  elsif input != 7
    app.return_error
  end

  main(app) unless input == 7
end

main
