class Array

def sum
		sum = 0
		self.each do |el| #calling on the array with self
			sum += el
		end
		return sum
	end


	def square
		newarray = []
		self.each do |el|
		newarray << el * el
		end
		return newarray


	end	

def square!
		count= 0
		self.size.times do 
			self[count] = self[count] * self[count]
			count +=1
		end
	end



end