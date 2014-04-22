module Weather_randomizer

attr_accessor :stormy

	def weather?
		rand() > 0 ? @stormy = true : @stormy =false
	end

end