def solve_cipher(input, shift)
	words = input.split("")

	string_container = ""

	words.each do |item|
		if item == " "
			string_container += " "
		else
		string_container += (item.ord + shift).chr	
	end
end
string_container
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)