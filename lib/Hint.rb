class Hint
	# This method returns a helper hint
	# If the user Answers the previous question
	# Correct they will recieve a generic hint based 
	# on the question type, otherwise a more detailed 
	# hint will be supplied
	def self.getHint(question, result)
		# If the previous result was correct provide generic Hint
		# Example (Number operator Number)
		if ((question =~ /^(\d\s[^...]\s\d)+$/) && result == true) 
			@hint = "Remeber the order of precendence (PEMDAS) Work from left to right"

		# Provide a more detailed Hint
		elsif ((question =~ /^(\d\s\-\s\d)+$/) && result == false)
			@hint = "Subtract number on the left from number on right"
		elsif ((question =~ /^(\d\s\+\s\d)+$/) && result == false)
			@hint = "Add the Number on right to number on left"
		elsif ((question =~ /^(\d\s\*\s\d)+$/) && result == false)
			@hint = "Multiply The number on the left by number on the right"
		elsif ((question =~ /^(\d\s\/\s\d)+$/) && result == false)
			@hint = "Divide the number on the left by the number on the right"

		# If the previous result was correct provide generic Hint
		# Example (Number (+ or -) Number (+ or -) Number)[^\*\/]
		elsif ((question =~ /^(\d\s[^\*\/]\s\d\s[^\*\/]\s\d)+$/) && result == true)
			@hint = "If operators are of equal precedence work from left to right"

		# Provide a more detailed Hint
		# Example 7 + 8 - 2
		elsif ((question =~ /^(\d\s\+\s\d\s\-\s\d)+$/) && result == false)
			@hint = "Work from left to right, Add the first two numbers and subtract
			 the third number from the result"
		# Example 9 - 8 + 4
		elsif ((question =~ /^(\d\s\-\s\d\s\+\s\d)+$/) && result == false)	
			@hint = "Work from left to right, Subtract the second number from the 
			first number and add the third number to the result"
		# Example 10 - 8 - 3
		elsif ((question =~ /^(\d\s\-\s\d\s\-\s\d)+$/) && result == false)	
			@hint = "Work from left to right, Subtract the second number from the 
			first number and subtract the third number from the result"
		# Example 2 + 5 + 2
		elsif ((question =~ /^(\d\s\+\s\d\s\+\s\d)+$/) && result == false)	
			@hint = "Work from left to right,adding one number to the next..."	

		# If the previous result was correct provide generic Hint
		# Example (Number (operator) Number (operator) Number)
		elsif ((question =~ /^(\d\s[^...]\s\d\s[^...]\s\d)+$/)&& result == true)
			@hint = "Identify order of precedence and solve"

		# Provide a more detailed Hint
		elsif ((question =~ /^(\d\s\*\s\d\s\*\s\d)+$/)&& result == false)
			@hint = "Work from left to right, multiply the first number by the second 
			number and multiply the result by the third number"
		elsif ((question =~ /^(\d\s\*\s\d\s\+\s\d)+$/)&& result == false)
			@hint = "Work from left to right, multiply the first number by the second 
			number and add the result to the third number"
		elsif ((question =~ /^(\d\s\*\s\d\s\-\s\d)+$/)&& result == false)
			@hint = "Work from left to right, multiply the first number by the second 
			number and subtract the third number from the result"
		elsif ((question =~ /^(\d\s\/\s\d\s\*\s\d)+$/)&& result == false)
			@hint = "Work from left to right, Divide the first number by the second 
			number and multiply the result by the third number"
		elsif ((question =~ /^(\d\s\/\s\d\s\+\s\d)+$/)&& result == false)
			@hint = "Work from left to right, Divide the first number by the second 
			number and add the result to the third number"
		elsif ((question =~ /^(\d\s\/\s\d\s\-\s\d)+$/)&& result == false)
			@hint = "Work from left to right, Divide the first number by the second 
			number and subtract the third number from the result"
		
		# Any Question which contains Parenthesis
		elsif ((question =~ /\(/) && result == true)
			@hint = "REMEMBER Solve the Parenthesis first"
		end
		return @hint
	end
end
