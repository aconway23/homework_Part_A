require('minitest/autorun')
require ('minitest/rg')
require_relative('./homework_Part_A.rb')

class TestStudent < MiniTest::Test
  @student


  def setup
    @student = Student.new('Adam', 16)
  end



  def test_name
    assert_equal('Adam', @student.name)
  end

  def test_cohort
    assert_equal(16, @student.cohort)
  end


  def test_set_student_name
    @student.set_name('Zach')
    assert_equal('Zach', @student.name)
  end

  def test_set_cohort
    @student.set_cohort(16)
    assert_equal(16, @student.cohort)
  end


   def test_talk
       @student.name
       puts "I can talk!"
    end
     #test passed but I think incorrect



  #  def test_favourite_programme_language
  #    @student.favourite_programme_language = ("Ruby")
  #    puts "I love Ruby"
  #  end



end
