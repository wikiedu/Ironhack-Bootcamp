class TextInspectionsController < ApplicationController

	def new
	end

	def create
   		@text = params[:text_inspection][:user_text]
   		@word_count = @text.split(" ").length
   		words=@text.split(" ")
   		h = Hash.new
   		@average_time = @word_count / 275.0

		   	words.each do |w|
		    if h.has_key?(w)
		      h[w] = h[w] + 1
		    else
		      h[w] = 1
		    end

		end
		@frecuency = ""
		counter = 0
		h.sort{|a,b| a[1]<=>b[1]}.each {|elem|
			if counter <10
				@frecuency = @frecuency + elem[0] + ' ' + elem[1].to_s + '  times  '
				counter += 1
			end
		}

    	render "results"
  	end
end
