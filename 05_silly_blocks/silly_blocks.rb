def reverser
	result = ""
	array = yield.reverse.split(" ")
	result << array[array.length-1]
	if(array.length > 1)
		i = array.length - 2
		while(i >= 0) do
			result << " #{array[i]}"
			i -= 1
		end
	end
	result
end

def adder(num=1, &block)
	block.call + num
end

def repeater(exec=0, &block)
	if(exec > 0)
		i=0
		while(i<exec)
			block.call
			i+=1
		end
	else
		block.call
	end
end