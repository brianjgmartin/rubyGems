#!/home/brianmartin/.rvm/rubies/ruby-2.1.5/bin/ruby

class Congratulations

	def self.response(level, correct, wrong, name)
		if wrong == 0
			@congrats = "Congratulations " + name + " You have completed Level " + level.to_s
			@right = "You got All " + correct.to_s + " Questions Correct"
			@notcorrect = "You got " + wrong.to_s + " Wrong Answers"
		elsif wrong > 0
			@congrats = "Congratulations " + name + " You have completed Level " + level.to_s
			@right = " You got " + correct.to_s + " Correct Answers"
			@notcorrect = "You got " + wrong.to_s + " Wrong Answers"
		end
		return @congrats, @right, @notcorrect
	end
end


	 	 