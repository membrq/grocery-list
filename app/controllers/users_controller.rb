class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit    
    @user = User.find(params[:id])
  end 

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = "Your account was successfully updated!"
      redirect_to user_path
    else
      flash.now[:danger] = "An error occurred. Your account was not updated."
      render :edit
    end
  end
   
  private
   
  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :username)
  end
end
