class Book

	def initialize()
		@title
	end

	def title=(title)
		@title = title
	end

	def title
		titleArray = @title.split(" ")
		titleArray[0].capitalize!
		if(titleArray.length > 1)
			i = 1
			while(i < titleArray.length) do
				if(titleArray[i] != "the" and
				   titleArray[i] != "a"   and
				   titleArray[i] != "an"  and
				   titleArray[i] != "and" and
				   titleArray[i] != "in"  and
				   titleArray[i] != "the" and
				   titleArray[i] != "of"  and
				   titleArray[i] != "or")
					titleArray[i].capitalize!
				end
				i += 1
			end
		end
		@title = titleArray.join(" ")
	end


end