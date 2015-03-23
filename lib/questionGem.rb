class QuestionGem

	$ans = 0
	# This method retuens a question based on a Users
	# Level and difficulty
	def self.questionuestionGenerator(level, difficulty)
		if difficulty == 1
			randomRange = (1..10)
		elsif difficulty == 2
			randomRange = (10..20)
		end
		x = rand(randomRange).to_i
		y = rand(randomRange).to_i
		z = rand(randomRange).to_i
		@question = ""
		# Add Two Numbers
		if level == 1
			@question = x.to_s + " + " + y.to_s 
			$ans = x + y
		# Add Three Numbers
		elsif level == 2
			@question = x.to_s + " + " + y.to_s + " + " + z.to_s 
			$ans = x + y + z
		# Subtraction Where Answer is positive using 2 numbers
		elsif level == 3
			if y <= x 
				@question = x.to_s + " - " + y.to_s
				$ans = x - y
			else 
				@question = y.to_s + " - " + x.to_s
				$ans = y - x
			end
		# Subtraction Where Answer may be Negative using 2 numbers	
		elsif level == 4
				@question = x.to_s + " - " + y.to_s
				$ans = x - y 
		# Subtraction Where Answer is positive or Negative using 3 numbers
		elsif level == 5
			@question = y.to_s + " - " + x.to_s + " - " + z.to_s
			$ans = y - x - z
		# Addition and subtraction combined
		elsif level == 6
			@question = y.to_s + " + " + x.to_s + " - " + z.to_s
			$ans = y + x - z
		# Multiplication of two Positive numbers
		elsif level == 7
			@question = y.to_s + " * " + x.to_s
			$ans = y * x
		# Multiplication of 3 numbers
		elsif level == 8
			@question = y.to_s + " * " + x.to_s + " * " + z.to_s
			$ans = y * x * z
		# Multiplication of two numbers Plus Addition
		elsif level == 9
			@question = "( " + y.to_s + " * " + x.to_s + " )" + " + " + z.to_s
			$ans = y * x + z
		# Multiplication of two numbers Plus Addition
		elsif level == 10
			@question = y.to_s + " * " + x.to_s + " + " + z.to_s
			$ans = y * x + z
		 # Multiplication of two numbers including a subtraction
		elsif level == 11
			@question = "( " + y.to_s + " * " + x.to_s + " )" + " - " + z.to_s
			$ans = y * x - z
		# Multiplication of two numbers including a subtraction
		elsif level == 12
			@question = y.to_s + " * " + x.to_s + " - " + z.to_s
			$ans = y * x - z
		# Division of two Positive numbers that equal a whole number 
		elsif level == 13
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " / " + y.to_s
			$ans = x / y
		# Division of two Positive numbers that equal a whole number plus Addition
		elsif level == 14
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = "( " + x.to_s + " / " + y.to_s + " )" + " + " + z.to_s
			$ans = x / y + z
		elsif level == 15
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " / " + y.to_s + " + " + z.to_s
			$ans = x / y + z
		# Division of two Positive numbers that equal a whole number including Subtraction
		elsif level == 16
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = "( " + x.to_s + " / " + y.to_s + " )"  + " - " + z.to_s
			$ans = x / y - z
		elsif level == 17
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " / " + y.to_s + " - " + z.to_s
			$ans = x / y - z

		end
		return @question
	end
end