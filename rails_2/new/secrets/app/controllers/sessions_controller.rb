class SessionsController < ActionController::Base
    def new
        @user = User.new
    end

    def create
        user = User.find_by_email( user_params[:email] )
        if user.try(:authenticate, user_params[:password])
            session[:user_id] = user_id
            # redirect_to '/users/#{user.id}/show'
