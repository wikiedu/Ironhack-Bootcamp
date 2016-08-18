class Car
	def initialize (engine)
		@engine = engine

	end

	def car_noise
		"Brrom!"
	end

	def make_noise
		puts "#{car_noise} #{@}"
end

class RegularEngine
	def nosie
	"brooooom"
	end 

end


class RacingEngine
	def nosie
	"BROOOOOOOM"
	end 

end


class TeslaSEngine
	def nosie
	"..."
	end 

end