class Person

  attr_reader :name, :books

  def initialize(options={})
    @name =options[:name]
    @books = {}
  end

  def pretty_string
    "'#{name}' has #{books.size} book#{'s' unless books.size == 1} borrowed from the library"
  end

  def borrow(book)
    books[book.title] = book
  end

  def list_books
    if books.empty?
      "No books here my sweet prince"
    else
      books.map { |key, book| book.pretty_string }.join("\n")
    end   
  end

  def return(book_title)
  books.delete(book_title)
  end

end