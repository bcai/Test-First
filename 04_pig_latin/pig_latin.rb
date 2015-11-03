def translate(word)
	final = ""
	wordArray = word.split(" ")
	i = 0
	while(i < wordArray.length)
		result = ""
		q = false
		caps = false

		temp = wordArray[i]

		#check for punctuation
		punc = ""
		if temp.include?(",")
			temp = temp.chomp(",")
			punc << ","
		elsif temp.include?("!")
			temp = temp.chomp("!")
			punc << "!"
		elsif temp.include?("?")
			temp = temp.chomp("?")
			punc << "?"
		elsif temp.include?(".")
			temp = temp.chomp(".")
			punc << "."
		else
			punc << ""
		end
		#check for capitalization
		if (temp[0] == temp[0].capitalize)
			caps = true
		end
		first = temp[0].downcase
		if( first == "q") # "qu " case
			q = true
		end
		# case beginning with vowel
		if( first == "a" or 
		    first == "e" or
		    first == "i" or
		    first == "o" or
		    first == "u" )
			result << "#{temp}"
		# case beginning with consonant
		else
			j = 1
			vowel = false
			while( j < temp.length) do
				if(vowel == false)
					if( temp[j] != "a" and
					    temp[j] != "e" and
					    temp[j] != "i" and
					    temp[j] != "o" and
					    temp[j] != "u" )
						first << "#{temp[j]}"
						if(q == false and temp[j] == "q")
							q = true
						end
					else
						if(q == true and temp[j] == "u")
							first << "#{temp[j]}"
						else
							vowel = true
						end
					end
				end
				if(vowel == true)
					result << "#{temp[j]}" 
				end
				j += 1
			end
			result << "#{first}"
		end
		result << "ay#{punc}" # append "ay" to end of word
		if(caps == true) # case if word is capitalized
			result.capitalize!
		end
		wordArray[i] = result
		i += 1
	end
	final << wordArray.join(" ")
	final
end