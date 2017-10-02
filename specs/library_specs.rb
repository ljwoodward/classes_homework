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

  end
