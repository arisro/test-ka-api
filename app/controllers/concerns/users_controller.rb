class UsersController < ApplicationController
	def not_found
		head :not_found
	end

	def index
		@users =  [{:fname => "Fname 1", :lname => "Lname 1" },
				{:fname => "Fname 2", :lname => "Lname 2" },
				{:fname => "Fname 3", :lname => "Lname 3" }]

		render json: @users
	end

	def login
		render json: {:status => 'success'}
	end
end