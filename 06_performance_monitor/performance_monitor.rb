def measure (n=1)
    durations = []
 
    n.times do
        start = Time.now
        yield
        finish = Time.now
        durations << (finish - start)
    end
 		
    total = (durations.inject(:+))/n
end