require_relative '../lib/password_checker.rb'

describe PasswordChecker do 
	describe "check_length" do

	it "checks if the password is longer than 7 characters" do
		expect(PasswordChecker.new.check_length("eduard@hotmail.com","12345678")).to eq(true)
	end
	end

	describe "check_contains_character" do

	it "checks if the password contains at least 1 letter, 1 number and 1 symbol" do
		expect(PasswordChecker.new.check_contains_character("eduard@hotmail.com","1e&")).to eq(true)
	end
	end

	describe "check_contains_upper_lower" do

	it "checks if the password contains at least 1 uppercase letter and 1 lowercase letter" do
		expect(PasswordChecker.new.check_contains_upper_lower("eduard@hotmail.com","eE")).to eq(true)
	end
	end

	describe "check_contains_name_domain" do

	it "checks if the password contains the name or the domain of the email" do
		expect(PasswordChecker.new.check_contains_name_domain("eduard@hotmail.com","eduard")).to eq(false)
	end
	end


end