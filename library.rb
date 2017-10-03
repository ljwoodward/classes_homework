class Library

  def initialize
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "the_catcher_in_the_rye",
        rental_details: {
          student_name: "Duncan",
          date: "01/01/17"
        }
      },
      {
        title: "a_pale_view_of_hills",
        rental_details: {
          student_name: "Rita",
          date: "11/03/17"
        }
      }
    ]
  end

  def list_books
    return @books
  end

  def book_details(name)

    for book in @books
      puts book[:title]
      if book[:title] == name
        return book


      end
    end
     return nil
  end

  def show_rental_details(name)
    for book in @books
      if book[:title] == name
        return book[:rental_details]
      end
    end
  end

def add_new_book(name)
  @books << {
    title: name,
    rental_details: {
      student_name: "",
      date: ""
    }
  }
end

def change_rental_details(title, student, return_date)
  for books in @books
    if books[:title] == title
      books[:rental_details][:student_name] = student
      books[:rental_details][:date] = return_date
    end
  end
  return "Book not in library."
end

end
