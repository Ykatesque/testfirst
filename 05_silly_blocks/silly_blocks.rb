def reverser
  string = yield  
  
  string_array = string.split.map do |word|
    reverse_word(word)
  end
  string_array.join(" ") 
end

def reverse_word(word)
  word.reverse!
end


def adder(counter=1)
  sum = yield
  sum += counter
end

def repeater(counter=1)
  counter.times do
    yield
  end
end
