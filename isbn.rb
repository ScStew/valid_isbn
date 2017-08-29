def isbn_validator(isbn)
	isbn.gsub!(/[^0-9A-Za-z]/, "")
	arr = isbn.split(//)
	
	if arr.length == 10
		if key_checker(arr) == true
			woo = math(arr)
			if woo == arr[-1]
				true
			else
				false
			end
		else
			false
		end
		

	elsif arr.length == 13
		if key_checker(arr) == true
			woo = big_math(arr)
			if woo = arr[-1]
				true
			else
				false
			end		
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
	if arr.length == 10
		arr.each do |x|
			if valid_keys.include?(x)
				true_arr << true
			else
				true_arr << false
			end
		end
		
	else
		valid_keys.slice!(-1)
		arr.each do |x|
			if valid_keys.include?(x)
				true_arr << true
			else
				true_arr << false
			end
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
	arr.each do |x|
		if counter%2 == 0
			mult = x.to_i*3
			adder << mult
		else
			mult = x.to_i*1
			adder << mult
		end

end