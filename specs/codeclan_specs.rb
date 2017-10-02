require "minitest/autorun"
require "minitest/rg"
require_relative "../codeclan.rb"

class TestCodeClan < MiniTest::Test
  @codeclan

  def setup
    @codeclan = CodeClan.new("Laurence", 16)
  end

def test_get_name
  assert_equal(@codeclan.get_name, "Laurence")
end

def test_get_cohort
  assert_equal(@codeclan.get_cohort, 16)
end

end
