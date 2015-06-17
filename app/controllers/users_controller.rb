class UsersController < ApplicationController
	
	def index
		params[:query] ||= "all"
		render json: User.send(params[:query]), root: "users"
	end

	def create
		user = User.new(user_params)
		user.save!
	end

	def destroy
		user = User.find_by(id: params[:id])
		user.destroy!
	end

	

	private
    def user_params
      params.require(:user).permit(:name, :dob)
    end
end