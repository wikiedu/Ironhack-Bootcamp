require "sinatra"
require 'pry'
# require 'artii'
enable (:sessions)

valid_usernames_passwords=[{:username =>"Edu",:password=>"12345"},{:username =>"Mario",:password=>"vonzu"}]

get "/" do
	"My first Sinatra app."
end

get "/about" do
	erb(:about)
end

get "/login" do
	erb(:login)
	# session[:saved_value]
end

get "/profile_page" do
	erb(:profile_page)

end

post "/user_input" do
	session[:myname] = params[:myname]
	session[:password] = params[:password]
	# erb(:user_input)
		valid_usernames_passwords.each do |hash| 
		
		if hash[:username]==session[:myname] && hash[:password]==session[:password]
			@valid_user = true
			break
		else
			@valid_user=false
		end
	end
		if @valid_user
			redirect('profile_page')
		else
			redirect ('/login')
		end

end


# get "/ascii/:word" do
# 	@word = params[:word]
# 	@a = Artii::Base.new
# 	erb(:ascii)
# end

get "/users/:username" do
	@username = params[:username]
	erb(:about)
end

get "/hours/ago/:hour_ago" do
	@hour_ago = params[:hour_ago].to_i
	@correct_hour = Time.now.hour-@hour_ago
	erb (:hours)
end

get '/contact' do
	erb(:contact)

end


# post '/receiving_info' do 
# 	@username = params[:firstname]
# 	@email = params[:email]
# 	erb (:profile_page)
# end
	

