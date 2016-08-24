require "sinatra"
require './lib/password_checker.rb'
require 'pry'

get "/" do
	erb(:home)
end

get "/congratulations" do
  erb(:congratulations)
end


post "/login" do

  session[:email] = params[:email]
  session[:password] = params[:password]
  # erb(:user_input)
    status = PasswordChecker.new.check_password(session[:email],session[:password])
    if status
      redirect('/congratulations')
    else
      redirect ('/')
    end

end
