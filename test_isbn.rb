require "minitest/autorun"
require_relative "isbn.rb"
class Test_isbn < Minitest::Test

def test_1_and_1
	assert_equal(1,1)
end

def test_length_pass
	assert_equal(true,isbn_validator("0471958697"))
end

def test_lenght_false
	assert_equal(false,isbn_validator("00471958697"))
end

def test_with_hypens_and_spaces
	assert_equal(true,isbn_validator("0-321-14653-0"))
end


end