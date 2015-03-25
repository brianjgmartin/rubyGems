#!/home/brianmartin/.rvm/rubies/ruby-2.1.5/bin/ruby

class ScoreTracker



	def self.CheckScore(level, correct_result)

		if (correct_result <= 2) or (correct_result >= 5 && correct_result  <= 6)
			difficulty = 1
		else 
			difficulty = 2
		end
		if correct_result >= 8
			level = level + 1
		else
			level = level
		end
		return level, difficulty
	end

end
