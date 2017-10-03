require "minitest/autorun"
require "minitest/rg"
require_relative "../library.rb"

class TestLibrary < MiniTest::Test
  @library1

  def setup
    @library1 = Library.new
  end

  def test_list_books
    assert_equal(@library1.list_books, [
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
      ])
    end

    def test_book_details
      assert_equal(@library1.book_details("lord_of_the_rings"), {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
        })
    end

    def test_show_rental_details
        assert_equal(@library1.show_rental_details("a_pale_view_of_hills"), {
          student_name: "Rita",
          date: "11/03/17"
          })
    end

    def test_add_new_book
      @library1.add_new_book("learn_to_code")
      assert_equal({
        title: "learn_to_code",
        rental_details: {
          student_name: "",
          date: ""
        }
        }, @library1.book_details("learn_to_code"))
    end

    def test_change_rental_details
      @library1.change_rental_details("a_pale_view_of_hills", "Eunice", "31/11/17")
      result = @library1.show_rental_details("a_pale_view_of_hills")
      assert_equal(result, {
        student_name: "Eunice",
        date: "31/11/17"
        })
    end

  end
