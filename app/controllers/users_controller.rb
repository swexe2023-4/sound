require 'bcrypt'

class UsersController < ApplicationController
  def index
    if session[:login_username] != nil
      render "logout"
    else
      render "index"
    end
  end
  
  def login
    user = User.find_by(username: params[:username])
    
    if user && BCrypt::Password.new(user.password) == params[:password]
      session[:login_username] = params[:username]
      session[:id] = params[:id]
      redirect_to top_index_path
      
    #else
      #render "error"
    end
  end

  def new
    # render 'new'
  end
  
  def make
    make_pass = BCrypt::Password.create(params[:password])
    user = User.new(username: params[:username], password: make_pass)
    user.save
    session[:login_username] = params[:username]
    redirect_to users_login_path
  end

  def complete
    #render "complete"
  end
  
  def logout
    session.delete(:login_username)
    redirect_to users_login_path
  end
end