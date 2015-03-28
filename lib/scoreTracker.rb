class ScoreTracker

	# Increment Level When 8 questions from previous level are correct
	# And or 70% of questions must be answered correctly
	def self.CheckLevel(correct_result, level, num_questions)

		# minimum questions needed to increment a level
		@min_correct_answers = 8
		# minimum percentage of questions answered correctly needed to increment level
		@min_percentage = num_questions * 70  / 100 
		# increment the level if correct answers and min percentage is acheived
		if correct_result >= @min_correct_answers and correct_result >= @min_percentage
			level = level + 1
		else
			level = level
		end

		# increment or decrement level of difficulty based on correct results
		if ((correct_result <= 1) or (correct_result  >= 4 and correct_result <= 5) or (correct_result >= @min_correct_answers)) 
        @difficulty = 1
      	else
        @difficulty = 2 
      	end

		return level, @difficulty, @min_percentage 
	end
end