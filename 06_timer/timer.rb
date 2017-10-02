class Timer
  #write your code here


attr_accessor :seconds
attr_accessor :minutes
attr_accessor :hours

def initialize

 @seconds =0
 @minutes=0
 @hours =0

end

def breakdown

 @hours= (@seconds/3600).to_i
 @minutes= ((@seconds%3600)/60).to_i
 @seconds= @seconds - ((3600*@hours)+(60*@minutes))

end

def pad(x)

if x<10
 return "0#{x}"
else
 return "#{x}"
end
end


def time_string

breakdown
return "#{pad(@hours)}:#{pad(@minutes)}:#{pad(@seconds)}"


end

end
