require "sinatra"
require './lib/calculator.rb'

get "/" do
	erb(:home)
end

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first,second).add
  "#{first} + #{second} = #{result}"

end

post "/calculate_sub" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first,second).sub
  "#{first} - #{second} = #{result}"
end

post "/calculate_mul" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first,second).mul
  "#{first} * #{second} = #{result}"
end

post "/calculate_div" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first,second).div
  "#{first} / #{second} = #{result}"
end