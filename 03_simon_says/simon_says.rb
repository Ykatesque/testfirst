
def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(input, n = 2)
  return ([input] * n).join ' '
end

def start_of_word(word, n = 0)
	return word[0...n]
end	

def first_word(string)
	array = string.split(/ /)
	return array[0]
end	

def titleize(string)


	words = string.split
 
 words.each_index do |index|
   words[index].capitalize! unless %w(the and over).include?(words[index])
  end
 
 #words = string.split
	#unless words[index] == "the", "and", "over"
		#words.each_index do |index| words[index].capitalize!
 #end	

  words.first.capitalize!
  return words.join(' ')


	#string.split(' ').map 
	#caparray = {|word| word.capitalize }
	#return caparray.join(' ')

end	

