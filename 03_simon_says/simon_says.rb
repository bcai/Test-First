def echo(word)
	word
end


def shout(word)
	word.upcase
end


def repeat(word, num=2)
	result = "#{word}"
	while num > 1 do
		result << " #{word}"
		num -=1
	end
	result
end


def start_of_word(word, num)
	result = ""
	if (num < 1)
		result = ""
	else
		wordArray = word.split("")
		i = 0
		while(i < num)
			result << wordArray[i]
			i += 1
		end
	end
	result
end


def first_word(word)
	wordArray = word.split(" ")
	result = wordArray[0]
	result
end


def titleize(word)
	result = ""
	wArray = word.split(" ")
	wArray[0].capitalize! # always capitalize first word
	if (wArray.length > 1)
		i = 0
		while (i < wArray.length) do
			if( wArray[i] != "the" and 
			    wArray[i] != "and" and
			    wArray[i] != "in"  and
			    wArray[i] != "of"  and
			    wArray[i] != "over" )
			    wArray[i].capitalize!
			end
			i += 1
		end
	end
	result << wArray.join(" ")
	result
end
