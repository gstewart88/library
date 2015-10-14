def menu
  puts `clear`
  puts "*** Hard Copy Rental - CodeClan Libray ***"

  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. Lists all Books"
  puts "4. List all People"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i

end

def list_borrowed(library)
  puts person.list_books
end

def list_people(library)
  puts library.list_people
end

def list_books(library)
  puts library.list_books
end

def create_book(library)
  print "Title: "
  title = gets.chomp

  print "Genre: "
  genre = gets.chomp

  book = Book.new(title: title, genre: genre)

  library.add_book(book)

end

def create_person(library)
  print "Name: "
  name = gets.chomp

  person = Person.new(name: name)

  library.add_person(person)

end

def lend_book(library)
  puts library.list_books
  puts
  print "Which book do you want to lend (by name): "
  book_title = gets.chomp

  puts

  print "Which person is going to borrow it (by name): "
  person_name = gets.chomp

  library.lend(person_name, book_title)
end


def return_book(library)
  puts
  print "Which person is going to return the book (by name): "
  person_name = gets.chomp
  person = library.people[person_name]
  puts

  puts person.list_books
  puts
  print "Which book will they return (by name): "
  book_title = gets.chomp

  library.return(person_name, book_title)
end