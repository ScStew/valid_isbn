def isbn_validator(isbn)
	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x"]
	if arr.length == 10
		arr.each do |x|
			if valid_keys.include?(x)
				true
			else
				false
			end


	else
		false
	end

end