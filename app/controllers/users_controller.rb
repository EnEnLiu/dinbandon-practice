class UsersController < ApplicationController
  
  def login
  end

  def sign_up
  end
  
  def registration
    if user_params[:password] == user_params[:password_confirm]
      u = User.new(user_params)
      
      if u.save
        redirect_to "/"
      else
        redirect_to "/sign_up"
      end
    else 
      redirect_to "/sign_up"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, 
                                 :password, 
                                 :password_confirm)
  end

end