require "minitest/autorun"
require_relative "isbn.rb"
class Test_isbn < Minitest::Test

def test_1_and_1
	assert_equal(1,1)
end

# def test_length_pass
# 	assert_equal(true,isbn_validator("0471958697"))
# end

# def test_lenght_false
# 	assert_equal(false,isbn_validator("00471958697"))
# end

# def test_with_hypens_and_spaces
# 	assert_equal(true,isbn_validator("0-321-14653-0"))
# end

# def test_for_valid_keys
# 	assert_equal(true,isbn_validator("0-321-14653-0"))
# end

# def test_for_valid_keys_fail
# 	assert_equal(false,isbn_validator("0-321-14z5y-0"))
# end

# def test_for_checksum_pass
# 	assert_equal(true,isbn_validator("0471958697"))
# end

# def test_for_checksum_fail
# 	assert_equal(false,isbn_validator("0471958698"))
# end

# def test_for_x_checksum
# 	assert_equal(true,isbn_validator("877195869x"))
# end

# def test_isbn13
# 	assert_equal(true,isbn_validator("978-0-13-149505-0"))
# end

# def test_isbn3_incorrect_key
# 	assert_equal(false,isbn_validator("978-0-x3-149x05-0"))
# end

# def test_isbn13_1
# 	assert_equal(true,isbn_validator("978-0-13-149505-0"))
# end

# def test_isbn13_1_fail
# 	assert_equal(false,isbn_validator("978-0-13-149505-4"))
# end

# def test_isbn13_2
# 	assert_equal(true,isbn_validator("978 0 471 48648 0"))
# end

# def test_isbn13_2_failed
# 	assert_equal(false,isbn_validator("978 0 471 48648 7"))
# end
def test_key_checker_small
	assert_equal(true,key_checker_small("0471958697"))
end

def test_key_checker_small_x
	assert_equal(true,key_checker_small("047195x697"))
end

def test_key_checker_small_fail
	assert_equal(false,key_checker_small("0471958z97"))
end	






end