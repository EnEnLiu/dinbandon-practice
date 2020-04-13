class UsersController < ApplicationController
  
  def login
  end

  def sign_up
    @user = User.new
  end
  
  def registration
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      render :sign_up 
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, 
                                 :password, 
                                 :password_confirmation)
  end

end