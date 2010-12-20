class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    if User.count.zero?
      user = User.create(:name => "admin", :password => "admin", :password_confirmation => "admin")
      session[:user_id] = user.id
      redirect_to admin_url, :notice => "You're connected as the default admin since no admin was created in the database."
    else
      if user = User.authenticate(params[:name], params[:password])
        session[:user_id] = user.id
        redirect_to admin_url
      else
        redirect_to login_url, :alert => "Invalid name/password combination"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to accueil_url, :notice => "Logged out"
  end

end
