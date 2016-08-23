require "sinatra"
require 'artii'

get "/" do
	"My first Sinatra app."
end

get "/about" do
	erb(:about)
end

get "/ascii/:word" do
	@word = params[:word]
	@a = Artii::Base.new
	erb(:ascii)
end

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
	

