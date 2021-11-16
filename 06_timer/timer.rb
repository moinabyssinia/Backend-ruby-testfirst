class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  # method to return string version of hour, minute, secnods
  def time_string
    # getHours + ":" + getMinutes + ":" + getSeconds(@seconds)
    legit_seconds, remainder = getSeconds(@seconds)

    legit_minutes, hours = getMinutes(remainder)

    hours + ":" + legit_minutes + ":" + legit_seconds
        
  end

  # get the seconds part
  def getSeconds(seconds)
    if seconds <= 59
      legit_seconds = seconds
    else
      legit_seconds = seconds%60
    end

    return time_formater(legit_seconds), (seconds/60.0).to_i

  end

  # get the minutes part
  def getMinutes(minutes)
    if minutes <= 59
      legit_minutes = minutes
    else
      legit_minutes = minutes%60
    end

    return time_formater(legit_minutes), time_formater((minutes/60.0).to_i)
  end

  # get the hours part 
  def getHours()
    
  end

  # format seconds to add 0s
  def time_formater(seconds)
    if seconds <= 9
      "0" + seconds.to_s
    else
      seconds.to_s
    end
  end

end
