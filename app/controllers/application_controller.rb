class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if session[:auth] != true
      flash[:danger] = "You are not authorized to do this"
      redirect_to root_path
    end
  end

  def authenticated?
    if session[:auth] == true
      return true
    else
      return false
    end
  end
end
