class UsersController < ApplicationController
before_action :set_user, only: [:destroy]
def new
	@user = User.new
end

def index
	@users = User.all
end

def create
	@user = User.new(user_param)
	if @user.save
		redirect_to users_path
	else
			render 'new'
	end
end

def edit
	@user = User.find(params[:id])
end

def update
	 @user = User.find(params[:id])	
      if @user.update(user_param)
        redirect_to users_path
      else
        render 'edit'
      end
end

def show

end

def add
	@user =	User.new(user_param)  
  
end

def destroy
	@user.destroy
	redirect_to users_path
end



	private
	def user_param
		params.require(:user).permit(:user_id, :name, :kor)
	end
	def set_user
      @user = User.find(params[:id])
    end
end
