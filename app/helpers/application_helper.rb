module ApplicationHelper
  def authenticated?
    if session[:auth] == true
      return true
    else
      return false
    end
  end
end
