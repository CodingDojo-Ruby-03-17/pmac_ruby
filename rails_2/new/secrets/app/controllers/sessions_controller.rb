
class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find_by_email( params[:email] )

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.name}"
      redirect_to "/users/#{user.id}"
    else
        flash[:errors] = "Email / password combination invalid"
        redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to "/"
    flash[:success] = "successfully logged out"
  end
end
