def translate(word)
	original_array = word.split
	word_array = []
	vowel = ["a", "e", "i", "o", "u"]
  original_array.each do |word|
	  if vowel.include?(word[0]) 
	    newword = word << "ay"

	    elsif word[0..1] == "qu" 
    	newword = word[2..-1] << "quay"

    	elsif word[0..2] == "squ" 
    	newword = word[3..-1] << "squay"

	  	elsif (vowel.include?(word[0]) or vowel.include?(word[1]) or vowel.include?(word[2]) )  == false
	  	newword = word[3..-1] << word[0..2] << "ay"   
	 	 	elsif vowel.include?(word[1]) == false
	  	newword = word[2..-1] << word[0..1] << "ay"

	  	else 
	  	 newword = word[1,word.length] << word[0] << "ay"  

	 	end
	  word_array << newword

  end 
 return word_array.join(' ')
end 