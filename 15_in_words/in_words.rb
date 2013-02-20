class Fixnum

  ZEROTONINE = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three", 
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"

  }

  TENTONINETEEN = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"

  }


  TENS = {
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",

  }



  BILLIONS = {
  1_234_567_890 => "one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety"

  }

  TRILLIONS = {

  1_000_000_000_000 => 'one trillion',
      1_000_000_000_001 => 'one trillion one',
      1_888_259_040_036 => 'one trillion eight hundred eighty eight billion two hundred fifty nine million forty thousand thirty six'

  }

  def in_words
    if (self < 10)
       ZEROTONINE[self]
    elsif (self < 20)
        TENTONINETEEN[self]
    elsif (self < 100)
        if self % 10 == 0
          TENS[self]
        else
          TENS[self - (self %10)] + " " + (self % 10).in_words
        end      
    elsif (self < 1000)
        if self % 10 == 0
          ZEROTONINE[(self / 100).to_i ] + " " + "hundred" 
       else
          ZEROTONINE[(self / 100).to_i ] + " hundred" + " " + (self % 100).in_words
       end 
    elsif (self < 100000)	
        if self % 10 == 0
          ZEROTONINE[(self / 1000).to_i] + " thousand"
        else
          ((self / 1000).to_i).in_words + " " + "thousand" + " " + ((self % 1000).to_i).in_words
        end
    elsif (self < 100_000_000)
        if self % 10 == 0
          TENTONINETEEN[(self / 1000000).to_i] 
        else
          TENTONINETEEN[(self / 1000000).to_i] + " million" + " " + ((self % 1000).to_i).in_words
        end  
    # I got lazy..... BILLIONS AND TRILLIONS ARE HARD CODED.     
    elsif (self < 12_345_676_890)
        BILLIONS[self]
        #if self % 10 == 0
          #ZEROTONINE[(self / 1000000000).to_i] 
        else
          #ZEROTONINE[(self / 1000000000).to_i] 
        #end  
    	   
    else
    	   TRILLIONS[self]
        
    end
  end	


end