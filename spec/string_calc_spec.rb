require './string_calc'

describe StringCalc do
  
  describe "add function" do
    
    it "should accept a string" do
      StringCalc.add("0").should == 0
      StringCalc.add("5").should == 5
    end
    
    it "should accept a string with 0, 1 or 2 numbers (comma seprated)" do
      StringCalc.add("").should == 0
      StringCalc.add("5").should == 5
      StringCalc.add("5,2").should == 7
    end
    
    it "should accept a string with unknown number of values (comma seprated)" do
      StringCalc.add("").should == 0
      StringCalc.add("2,3,5,7").should == 17
      StringCalc.add("11,13,17,19,23").should == 83
    end
    
  end
  
end
