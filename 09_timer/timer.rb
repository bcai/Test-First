class Timer
	def initialize()
		@seconds = 0
		@time_string = ""
	end

	def seconds()
		@seconds
	end

	def time_string()
		@time_string
	end	

	#assign variables between the 3 colons
	def seconds=(seconds)
		@seconds = seconds
		 #calculate hours
		 tHour = seconds/3600
		 if(tHour == 0)
		 	@time_string << "00:"
		 elsif(tHour < 10)
		 	@time_string << "0#{tHour}:"
		 else
		 	@time_string << "#{tHour}:"
		 end

		 #calculate minutes
		 if(seconds > 3600)
		 	tMin = seconds/60 - 60
		 else
		 	tMin = seconds/60
		 end
		 if(tMin == 0)
		 	@time_string << "00:"
		 elsif(tMin < 10)
		 	@time_string << "0#{tMin}:"
		 else
		 	@time_string << "#{tMin}:"
		 end

		 #calculate seconds
		 tSec = seconds%60
		 if(tSec == 0)
		 	@time_string << "00"
		 elsif(tSec < 10)
		 	@time_string << "0#{tSec}"
		 else
		 	@time_string << "#{tSec}"
		 end
	end

end