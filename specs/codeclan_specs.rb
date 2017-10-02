require "minitest/autorun"
require "minitest/rg"
require_relative "../codeclan.rb"

class TestStudent < MiniTest::Test
  @student1

  def setup
    @student1 = Student.new("Laurence", 16)
  end

def test_get_name
  assert_equal(@student1.get_name, "Laurence")
end

def test_get_cohort
  assert_equal(@student1.get_cohort, 16)
end

end
