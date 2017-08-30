def isbn_validator(isbn)
	isbn_special = isbn.gsub(/[^0-9A-Za-z]/, "")
	if isbn_special.length == 10
		if key_checker_small(isbn) == true
			isbn.gsub!(/[^0-9A-Za-z]/, "")
			arr = isbn.split(//)
			
			if arr.length == 10
				checksum = math(arr)
				if checksum == arr[-1]
					"valid"
				else
					"invalid: incorrect checknumber" 
				end
			else
				"invalid: incorrect length"
			end
		else
			"invalid: incorrect characters"
		end	
	elsif isbn_special.length == 13
		if key_checker_large(isbn)
			isbn.gsub!(/[^0-9A-Za-z]/, "")
			arr = isbn.split(//)
			if arr.length == 13
				checksum = big_math(arr)
				# p woo
				# p arr
				# p arr[-1]
				if checksum == arr[-1]
					"valid"
				else
					"invalid: invalid checknumber"
				end	
			else
				"invalid: incorrect length"
			end
			
		else
			"invalid: incorrect characters"
		end
	else 
		"invalid:"
		
	end
end

def key_checker_small(isbn)
	arr = isbn.split(//)
	true_arr = []
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x","-"," "]
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

def key_checker_large(isbn)
	arr = isbn.split(//)
		true_arr = []	
		valid_keys = ["0","1","2","3","4","5","6","7","8","9","-"," "]
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

def math(arr)

	counter = 1
	check = []
	tick = arr.length-1
	tick.times do
		mult = arr[counter-1].to_i * counter
		check << mult
	counter += 1
	end
	sum = check.sum	
	checksum = sum%11
	# p "#{checksum} checksum!!!!!!!!!!!!!!!!!"
	if checksum == 10
		checksum = "x"
	else
		checksum.to_s
	end
end

def big_math(arr)
counter = 1
adder = []
	12.times do
		if counter%2 == 0
			mult = arr[counter-1].to_i*3
			adder << mult
		else
			mult = arr[counter-1].to_i*1
			adder << mult
		end
		counter += 1
	end
	# p adder
	sum = adder.sum
	y = sum % 10
	x = 10 - y
	checksum = x % 10
	checksum.to_s
end