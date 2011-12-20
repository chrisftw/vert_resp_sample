require './string_calc'

describe StringCalc do
  
  describe "add function" do
    
    it "should accept a string" do
      StringCalc.add("0").should == 0
      StringCalc.add("5").should == 5
    end
    
  end
  
end
