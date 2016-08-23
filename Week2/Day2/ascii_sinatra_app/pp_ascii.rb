require "sinatra"
require 'artii'
require 'pry'

get "/ascii/:word/?:font_name?/?:secret?" do
	@word = params[:word]
	@font = params[:font_name]
	@secret = params[:secret]

	# Condicional opcion 1: If

	if @font=="special" && @secret="secret"
		erb(:image)
	elsif @font != nil 
		@a = Artii::Base.new :font => @font
		erb(:ascii)

	else
		@a = Artii::Base.new 
		erb(:ascii)
	end

	# Condicional opcion 2: Ternary 
	# @a = @font != nil ? (Artii::Base.new :font => @font) : (Artii::Base.new)

end
