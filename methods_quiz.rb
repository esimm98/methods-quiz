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
	
	def icy_hot?(a, b)
		(a < 0 && b > 100) || (b < 0 && a > 100)
	end
	
	def closer_to(target, b, c)
		if((target - b).abs < (target - c).abs)
			return b
		elsif((target - b).abs > (target - c).abs)
			return c
		else
			return 0
		end
	end

	def two_as_one?(a, b, c)
		a + b == c || a + c == b || b + c == a
	end

	# TODO - write pig_latinify

end