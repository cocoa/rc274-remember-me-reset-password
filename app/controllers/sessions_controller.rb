class SessionsController < ApplicationController

  
  def new
  end

  def create
    user = User.find_by_email params[:email]
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end

      #session[:user_id] = user.id
      #cookies.permanent[:auth_token] = user.auth_token
      redirect_to root_url, :flash => {:success => 'Logged in!'}
    else
      flash.now.alert = "Email or password is invalid"
      render :new
    end
  end


  def destroy
    #session[:user_id] = nil
    cookies.delete(:auth_token)
    redirect_to root_url, :flash => { :info => 'Logged out'}
  end


end
