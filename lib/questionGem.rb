class QuestionGem

	$ans = 0
	@question = ""

	# This method retuens a question based on a Users
	# Level, difficulty and number of correct questions answered
	# Each level Consists of 8 questions 
	# Each level has two different types of questions with two difficulty levels

	def self.questionGenerator(level, difficulty, correct_result_count)
		# Increase Question complexity
		if correct_result_count <=3
			easy = true
		else
			easy = false
		end

		# Increase difficulty of Question
		if difficulty == 1
			randomRange = (1..10)
		else
			randomRange = (10..20)
		end

		x = rand(randomRange).to_i
		y = rand(randomRange).to_i
		z = rand(randomRange).to_i
		

		# Level 1 ---- Add Two Numbers
		if level == 1 and easy
			@question = x.to_s + " + " + y.to_s 
			$ans = x + y

		elsif level == 1 and !easy 
			# Add Three Numbers 
			@question = x.to_s + " + " + y.to_s + " + " + z.to_s 
			$ans = x + y + z
		end
		
		# Level 2 ---- Subtraction Where Answer is positive using 2 numbers
		if level == 2 and easy
			if y <= x 
				@question = x.to_s + " - " + y.to_s
				$ans = x - y
			else 
				@question = y.to_s + " - " + x.to_s
				$ans = y - x
			end

		# Subtraction Where Answer may be Negative using 2 numbers	
		elsif level == 2 and !easy 
				@question = x.to_s + " - " + y.to_s
				$ans = x - y
		end

		# Level 3 ---- Subtraction Where Answer is positive or Negative using 3 numbers
		if level == 3 and easy
			@question = y.to_s + " - " + x.to_s + " - " + z.to_s
			$ans = y - x - z

		# Addition and subtraction combined
		elsif level == 3 and !easy
			@question = y.to_s + " + " + x.to_s + " - " + z.to_s
			$ans = y + x - z
		end

		# # Level 4 ------- Multiplication of two Positive numbers
		if level == 4 and easy
			@question = y.to_s + " X " + x.to_s
			$ans = y * x
		# Multiplication of 3 numbers
		elsif level == 4 and !easy
			@question = y.to_s + " X " + x.to_s + " X " + z.to_s
			$ans = y * x * z
		end

		# Level 5 ---- Multiplication of two numbers Plus Addition
		if level == 5 and easy
			@question = "( " + y.to_s + " X " + x.to_s + " )" + " + " + z.to_s
			$ans = y * x + z
		# Multiplication of two numbers Plus Addition without Parenthesis
		elsif level == 5 and !easy
			@question = y.to_s + " * " + x.to_s + " + " + z.to_s
			$ans = y * x + z
		end

		# Level 6 ----- Multiplication of two numbers including a subtraction
		if level == 6 and easy
			@question = "( " + y.to_s + " X " + x.to_s + " )" + " - " + z.to_s
			$ans = y * x - z

		# Multiplication of two numbers including a subtraction without Parenthesis
		elsif level == 6 and !easy
			@question = y.to_s + " X " + x.to_s + " - " + z.to_s
			$ans = y * x - z
		end

		# Level 7 ---- Division of two Positive numbers that equal a whole number 
		if level == 7 and easy
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " ÷ " + y.to_s
			$ans = x / y

		# Division of two Positive numbers that equal a whole number plus Addition with Parenthesis
		elsif level == 7 and correct_result_count >= 5 and correct_result_count <= 6
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = "( " + x.to_s + " ÷ " + y.to_s + " )" + " + " + z.to_s
			$ans = x / y + z

		# Division of two Positive numbers that equal a whole number plus Addition without Parenthesis
		elsif level == 7 and correct_result_count > 6
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " ÷ " + y.to_s + " + " + z.to_s
			$ans = x / y + z
		end

		# Level 8 ----- Division of two Positive numbers that equal a whole number including Subtraction
		if level == 8 and easy
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = "( " + x.to_s + " ÷ " + y.to_s + " )"  + " - " + z.to_s
			$ans = x / y - z

		elsif level == 8 and !easy
		while (x.to_f/y.to_f)%1 != 0  do
			x = rand(1..20)
			y = rand(1..20)	
		end
			@question = x.to_s + " ÷ " + y.to_s + " - " + z.to_s
			$ans = x / y - z

		end
		return @question
	end

	# Check Student answer and pass to controller
	def self.getResult(student_ans)
		if student_ans == $ans
			result = true
		else 
			result = false
		end
		return result
	end

end