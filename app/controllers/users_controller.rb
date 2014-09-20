class UsersController < ApplicationController
	before_action :authenticate_user!

	def dashboard
		@books = Book.all
	end

end