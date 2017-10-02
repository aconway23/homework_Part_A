require('minitest/autorun')
require ('minitest/rg')
require_relative('./homework_Part_A.rb')

class TestStudent < MiniTest::Test
  @student

  def setup
    @student = Student.new('Adam', 16)
  end

  def test_name
    assert_equal("Adam", @student.name)
  end

  def test_cohort
    assert_equal(16, @student.cohort)
  end 

end
