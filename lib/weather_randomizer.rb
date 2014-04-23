module Weather_randomizer

attr_accessor :stormy

	def weather?
		# the ternary is superfluous
		# rand() > 0.5 will suffice
		rand() > 0.5 ? @stormy = true : @stormy =false
	end

end
