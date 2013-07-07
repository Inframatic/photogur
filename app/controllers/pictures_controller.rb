class PicturesController < ApplicationController
	def index
	  @pictures = Picture.all
	end

	
	# def picture0
	# 	@picture = {
	# 		:title => "The old church on the coast of White sea",
	#   	:artist => "Sergey Ershov",
	#   	:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	# 	}
	# end

	# def picture1
	# 	@picture = {
	#   		:title => "Sea Power",
	#   		:artist => "Stephen Scullion",
	#   		:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	#   }
	# end

	# def picture2
	# 	@picture = {
	# 		:title => "Into the Poppies",
	#   	:artist => "John Wilhelm",
	#   	:url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	# 	}
	# end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])

		if @picture.update_atributes(params[:id])
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	def show
  	@picture = Picture.find(params[:id])
	end

	def new
		@picture = Picture.new
	end

	def create
	  # Make the variable @picture a new picture with the given params
	  @picture = Picture.new(params[:picture])
	  if @picture.save
	    # if the save for the picture was successful, go to index.html.erb
	    redirect_to pictures_url
	  else
	    # otherwise render the view associated with the action :new (i.e. new.html.erb)
	    render :new
	  end
	end

end