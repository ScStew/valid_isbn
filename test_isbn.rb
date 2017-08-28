require "minitest/autorun"
require_relative "isbn.rb"
class Test_isbn < Minitest::Test

def test_1_and_1
	assert_equal(1,1)
end

def test_length_pass
	assert_equal(true,isbn_validator("0471958697"))
end



end