class UsersController < ApplicationController
	before_action :authenticate_user!

	def dashboard
		@books = Book.all
	end

	def search_results
		@books = Book.where("LOWER(tags) LIKE ? or LOWER(name) LIKE ?" ,"%#{params[:search].downcase}%","%#{params[:search].downcase}%")
	end

	def add_to_list
		list = List.create(:book_id => params[:book_id], :user_id => current_user.id)
		flash[:success] = "Book has been added to list."
		redirect_to  users_dashboard_path
	end

end


