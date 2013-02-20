class RPNCalculator

	def initialize 

		@stack = []
		@value = 0

	end


	def push(num)
		@stack << num
	end

	def plus
		if @stack.empty?	
		raise "calculator is empty"
		else
		lastnum = @stack.pop
		almostlast = @stack.pop
		@value = lastnum + almostlast  

		@stack << @value 
		end
	end


	def minus
		if @stack.empty?	
		raise "calculator is empty"
		else
		lastnum = @stack.pop
		almostlast = @stack.pop
		@value = lastnum - almostlast  

		@stack << @value 
		end
	end



	def times
		if @stack.empty?	
		raise "calculator is empty"
		else
		lastnum = @stack.pop.to_f
		almostlast = @stack.pop.to_f
		@value = lastnum * almostlast  

		@stack << @value 
		end
	end

	def divide
		if @stack.empty?	
		raise "calculator is empty"
		else
		lastnum = @stack.pop.to_f
		almostlast = @stack.pop.to_f
		@value = lastnum / almostlast  

		@stack << @value 
		end
	end

	def tokens(string)
		array = string.split
		array.collect! do |el| 
			if el == "1" || el == "2" || el == "3" || el == "4" || el == "5"
			el.to_i
			else
			el.to_sym
			end
		end
	end



	def value
		@value
	end	


	def evaluate(string)
		foo = tokens(string)
		foo.each do |el| if Fixnum === el 
		push(el)
			elsif el == :+
			plus
			elsif el == :-
			minus
			elsif el == :*
			times
			else el == :/
			divide

			end

		end

	return @value


	end


end





