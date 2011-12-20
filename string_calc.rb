

class StringCalc
  
  # read in a string, parse the string and add the numbers.
  def self.add(values)
    if(values.index(/(,|\n){2}/)) # not sure why we are checking for this, but it is in the spec to not allow it.
      raise RuntimeError, "Double Delimiter Foul"
    end
    int_values = values.split(/,|\n/).collect{ |num| num.to_i }
    return 0 if int_values.empty?
    return int_values.inject(:+)
  end
end
