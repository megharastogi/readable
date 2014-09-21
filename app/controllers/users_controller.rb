class UsersController < ApplicationController
	before_action :authenticate_user!

	def dashboard
		@books = Book.all
	end

	def search_results
		@books = Book.where("LOWER(tags) LIKE ? or LOWER(name) LIKE ?" ,"%#{params[:search].downcase}%","%#{params[:search].downcase}%")
	end

	def add_to_list
		
	end

end


