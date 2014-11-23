class SessionsController < ApplicationController
	def new 
		redirect_to "http://wiisola.javaeye.com/"
	end

	def  create
		user = User.find_by_email(params[:user][:email])

		if (user && user.pwd == params[:user][:pwd])
			session[:user_id] = user.id
			redirect_to user
		else
			flash.now[:error] = 'Invalid email/password combination'
			redirect_to  'http://localhost:3000/login'
		end
	end

	def destroy
		
	end
end
