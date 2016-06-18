require_relative('../lib/fizzbuzz')
require('spec_helper')

#TDD approach allows you to test code before it is written. 
#This can helps create and write the methods before solving the problem.

describe "FizzBuzz" do 

		before :each do 
			@buzzer = FizzBuzz.new
		end

		describe "#fizz?" do 
			it "should return true if the number is divisible by 3" do
				expect(@buzzer.fizz?(6)).to eq(true) 
			end

			it "should return false if the number is not divisible by 3" do 
				expect(@buzzer.fizz?(7)).to eq(false)
			end
		end 

		describe "#buzz?" do
			 it "should return true if the number is divisible by 5" do
			 		expect(@buzzer.buzz?(10)).to eq(true)
			 end

			 it "should return false if the number is not divisible by 5" do 
			 		expect(@buzzer.buzz?(7)).to eq(false)
			 end
		end

		describe "#fizzbuzz?" do 
			it "should return true if the number is divisible by 5 and 3" do
					expect(@buzzer.fizz_buzz?(15)).to eq(true)
			end

			it "should return false if the number is not divisible by 5 and 3" do 
					expect(@buzzer.fizz_buzz?(7)).to eq(false)
			end
		end

		describe "#fizz_printer" do 
			it "should count from 1 to a number, and return a new array with that number of elements" do 
				expect(@buzzer.fizz_printer(100).length).to eq(100)
			end

		describe "#fizz_printer" do 
			it "should replace multiples of 3 with Fizz" do 
				expect(@buzzer.fizz_printer(100)[2]).to eq("Fizz")
			end
		end


		describe "#fizz_printer" do 
			it "should replace multiples of 5 with Buzz" do 
				expect(@buzzer.fizz_printer(100)[4]).to eq("Buzz")
			end
		end
	
		describe "#fizz_printer" do 
			it "should replace multiples of 5 and with FizzBuzz" do 
				expect(@buzzer.fizz_printer(100)[14]).to eq("FizzBuzz")
			end
		end
	
	end
end