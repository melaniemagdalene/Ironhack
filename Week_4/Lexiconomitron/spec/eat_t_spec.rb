require_relative"../lib/eat_t"
require "./spec_helper"

describe Lexiconomitron do
	# describe "lexiconomitron does stuff to strings" do
		before :each do 
			@lexiconomitron = Lexiconomitron.new
		end	
	# end
  
  	describe "removes t" do
    	it "removes every letter t from the input" do
      		expect(@lexiconomitron.eat_t("great scott!")).to eq("grea sco!")
    	end
    end

  	
  	describe "returns reversed" do
  		it "returns reversed shit without the letter t" do
  			expect(@lexiconomitron.shazam(["this", "is", "a", "test", "string"])).to eq(["gnirs", "sih"])
  		end
  	end

end