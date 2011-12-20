
class StringCalc
  
  # read in a string, parse the string and add the numbers.
  def self.add(values)
    delimiter = ",|\n"  #default delimiters
    
    if values.match(/^\/\//)
      mdata = /\/\/(.)\n(.*)/.match values
      values = mdata[2]
      delimiter = mdata[1]
    end
    
    if(values.index(/(#{delimiter}){2}/)) # not sure why we are checking for this, but it is in the spec to not allow it.
      raise RuntimeError, "Double Delimiter Foul"
    end
    
    int_values = values.split(/(#{delimiter})/).collect{ |num| num.to_i }
    
    # check for negative numbers here.
    negatives = int_values.select{|num| num < 0}
    raise RuntimeError, "negatives not allowed (#{negatives.join(',')})" if !negatives.empty?
    
    return 0 if int_values.empty?
    return int_values.inject(:+)
  end
end
