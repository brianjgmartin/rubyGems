#!/home/brianmartin/.rvm/rubies/ruby-2.1.5/bin/ruby

class ScoreTracker

	def self.CheckScore(result, level)
		if result == 6
		 level = level + 1
		else 
			level = level
		end
		return level
	end

end

