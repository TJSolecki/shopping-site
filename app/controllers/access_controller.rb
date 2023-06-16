class AccessController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]
  def new
    if session[:user_id]
      redirect_to admin_order_num_url
      return
    end
  end

  def create
    puts "username = #{params[:username]}"
    user = User.find_by(name: params[:username])
    p user
    p User.all

    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_order_num_url
    else
      redirect_to access_new_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to access_new_url, notice: "Logged out"
  end
end
