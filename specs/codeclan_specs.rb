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

def test_set_name
  @student1.set_name("Darren")
  assert_equal(@student1.get_name, "Darren")
end

def test_set_cohort
  @student1.set_cohort(15)
  assert_equal(@student1.get_cohort, 15)
end

def test_talk
  string = "I can talk!"
  @student1.talk("I can talk!")
  assert_equal("I can talk!", string)
end

end
