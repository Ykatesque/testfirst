class Temperature
  def initialize(options) #temp stored as hash values
    @temp = options[:f]
    if  @temp == nil
     @temp =  options[:c]  *  (9.0/5.0) + 32.0 #change to f after storing in hash for convenience
    end
  end

  def in_fahrenheit
     @temp
  end
  
  def in_celsius
  (@temp  - 32) * (5.0/9.0)
  end

  def self.from_celsius(temperature)
    Temperature.new( { :c => temperature })

  end

  def self.from_fahrenheit(temperature)

    Temperature.new( { :f => temperature })

  end


end


class Celsius < Temperature
  def initialize (temperature)
    super({ :c => temperature })
   
   end
end




class Fahrenheit < Temperature
  def initialize (temperature)
    super({ :f => temperature })
   
   end
end

