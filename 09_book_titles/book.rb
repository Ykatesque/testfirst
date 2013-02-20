class Book
	def words(string)
		@array = string.split
	end

	def title=(t)                     #name= METHOD NAME - convention for setter methods
		words(t)
	end

	def title
	

@array.each_index do |index|
    @array[index].capitalize! unless %w(the and in of over a an).include?(@array[index])
  end

  	@array[0].capitalize!
		@array.join(' ')

end

		
=begin
		@array.each do |element| 

		unless element == "and", "in"

		element.capitalize

		end

		end


		@array.join(' ')


end
=end

#def set_title(t)
#words(t)
#end



end


#tues wed after 1pm 

#thurs 4pm 


