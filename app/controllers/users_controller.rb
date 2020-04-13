class UsersController < ApplicationController
  
  def login
    @user = User.new
  end

  def sign_up
    @user = User.new
  end

  def sign_in
    user  = User.find_by(email: user_params[:email],
                         password: user_params[:password])
    if user
      session[:ccc9527] = user.email
      redirect_to root_path
    else 
      redirect_to login_path
    end

  end
  
  def registration
    @user = User.new(user_params)
    if @user.save
      session[:ccc9527] = @user.email
      redirect_to "/"
    else
      render :sign_up 
    end
  end

  def logout
    session[:ccc9527] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, 
                                 :password, 
                                 :password_confirmation)
  end

end