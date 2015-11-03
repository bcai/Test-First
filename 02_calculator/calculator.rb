def add(a,b)
	result = a+b
end


def subtract(a,b)
	result = a-b
end


def sum(array)
	@sum = 0
	array.each do |i|
		@sum += i
	end
	@sum
end


def multiply(a,b)
	result = a*b
end


def power(a,b)
	# @result
	# if (b == 0)
	# 	@result = 1
	# else 
	# 	@result = 1
	# 	while(b > 0) do
	# 		@result *= a
	# 		b-=1
	# 	end
	# end
	# @result
	result = a**b
end


def factorial(a)
	@result
	if (a == 0 or a == 1)
		@result = 1
	else
		@result = 1
		while(a > 1) do
			@result *= a
			a-=1
		end
	end
	@result
end