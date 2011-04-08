class UsersController < ApplicationController
	def index
		@users = User.all
		@title = "Usuarios"
	end
	
	def new
		@user = User.new
		@title = "Crear nuevo usuario"
	end
	
	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to(:action => 'index')	
		else
			render('new')
		end
	end
	
end
