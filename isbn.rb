def isbn_validator(isbn)
	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x"]
	if arr.length == 10
		new_arr = arr.keep_if{ |v| v =~ /valid_keys/}
			if new_arr.any?
				false
			else
				true
			end 

	else
		false
	end

end

