require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

def setup
  options = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter", "house" => "Gryffindor", "age" => 13 }
  @student = Student.new(options)

end

def test_full_name
  result = @student.full_name
  assert_equal("Harry Potter", result)
end

end
