def code_cesar (string, change)

	lettres = string.split("")
	shifted_string = []
	ponctuation = [",", " ", ".", "!", "?", "'", ";", ":"]
	lettres.each do |lettre|
		if ponctuation.include?(lettre)
			shifted_value = lettre
		else
			if lettre.ord > "Z".ord
				shifted_value = lettre.ord + change 
				if shifted_value > "z".ord 
					shifted_value -= 26 
				end
			else
				shifted_value = lettre.ord + change 
				if shifted_value > "Z".ord 
					shifted_value -= 26 
				end
			end
			shifted_value = shifted_value.chr
		end
		shifted_string.push(shifted_value)
	end
	shifted_string.join
end

puts code_cesar("What a string!", 5)

