require "sinatra"
require './lib/calculator.rb'
require 'pry'

get "/" do
	erb(:home)
end

get "/add" do
  erb(:add)
end

post "/operation" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  operation = params[:operation]
  if operation=="add"
    result = Calculator.new(@first,@second).add
    "#{@first} + #{@second} = #{@result}"
  elsif operation=="sub"
    result = Calculator.new(@first,@second).sub
    "#{@first} - #{@second} = #{@result}"
  elsif operation =="mul"
    result = Calculator.new(@first,@second).mul
    "#{@first} * #{@second} = #{@result}"
  else 
    result = Calculator.new(@first,@second).div
    "#{@first} / #{@second} = #{@result}"
  end


end