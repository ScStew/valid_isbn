def isbn_validator(isbn)
	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)
	
	if arr.length == 10
		if key_checker(arr) == true
			true
		else
			false
		end
		

	else
		false
	end
end

def key_checker(arr)
	true_arr = []
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x"]
	arr.each do |x|
		if valid_keys.include?(x)
			true_arr << true
		else
			true_arr << false
		end
	end
	if true_arr.include?(false)
		false
	else
		true
	end

end