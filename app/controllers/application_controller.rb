class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  protected
    def authorize
      id = session[:user_id]
      unless User.find_by_id(id)
        redirect_to login_url, :notice => "Please log in"
      end
    end
end
