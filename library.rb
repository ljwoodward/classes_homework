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

end
