def isbn_validator(isbn)
	arr = isbn.split(//)
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x"]
	if arr.length == 10
		true
	else
		false
	end

end