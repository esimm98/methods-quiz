module MethodsQuiz
	
	def has_teen?(a, b, c)
		(a >= 13 && a <= 19) || (b >= 13 && b <= 19) || (c >= 13 && c <= 19)
	end
	
	def not_string(str)
		if str[0] == "n" && str[1] == "o" && str[2] == "t"
			return str
		else
			return "not " + str
		end
	end
	
	# TODO - write icy_hot?
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end