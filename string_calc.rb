

class StringCalc
  
  # read in a string, parse the string and add the numbers.
  def self.add(values)
    int_values = values.split(/,|\n/).collect{|num| num.to_i}
    return 0 if int_values.empty?
    return int_values.inject(:+)
  end
end
