#!/home/brianmartin/.rvm/rubies/ruby-2.1.5/bin/ruby

class Congratulations
	
	# Returns level results on Completion
	def self.response(level, correct, wrong, name)
			@congrats = "Congratulations " + name + " You have completed Level " + level.to_s
			@right = "You got All " + correct.to_s + " Questions Correct"
			@notcorrect = "You got " + wrong.to_s + " Wrong Answers"
		return @congrats, @right, @notcorrect
	end
end


	 	 