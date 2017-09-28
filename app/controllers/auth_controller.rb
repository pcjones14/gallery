class AuthController < ApplicationController

  def index
    if session[:auth] == true
      flash[:danger] = "You are already logged in"
      redirect_to root_path
    end
  end

  def login
    if Digest::SHA2.hexdigest(params[:password].strip + "X2ZZFEAU") == "b87057993029bb17ce315de6e0c1ad36d6b273bf6aa635a8442fd86a146e4746"
      session[:auth] = true
      flash[:success] = "You are now logged in"
      redirect_to root_path
    else
      flash[:danger] = "Your login attempt failed"
      redirect_to login_path
    end
  end

  def logout
    if session.delete(:auth)
      flash[:success] = "You are now logged out"
      redirect_to root_path
    else
      flash[:danger] = "You are not logged in"
      redirect_to root_path
    end
  end

end
