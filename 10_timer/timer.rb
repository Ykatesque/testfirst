class Timer
attr_accessor :seconds

    def initialize
    @seconds = 0

    end

    #def seconds=(seconds)
    #@sec = seconds
    #end

    def seconds
    @seconds
    end


    def time_string
         
    minutes = @seconds / 60 
    #seconds = @sec % 60
    hours = minutes / 60
    "%02d:%02d:%02d" %[hours, minutes % 60, @seconds % 60] #display % for formatting 
    end

end
