class LinksController < ApplicationController

	def show
		@link = Link.find(params[:id])
	end
	
	def new
		@link = Link.new
	end
	
	def create
		@link = Link.new(params[:link])
		if @link.save
			flash[:notice] = "Link created."
			redirect_to :action => "show", :id => @link.id
		else
			render('new')
		end
	end

end
