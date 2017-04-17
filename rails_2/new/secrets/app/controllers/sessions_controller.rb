class SessionsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        user = User.find_by_email( user_params[:email] )

        if user.try( :authenticate, user_params[:email] )
            session[:user_id] = user.id
            redirect_to '/users/#{user.id}/show'
        else
            if user
                flash[:errors] = user.errors.full_messages
            else
                flash[:errors] = ['Incorrect username and/or password']
            end
            redirect_to action: 'new' #will this work???
        end
    end
    
    def destroy
        reset_session
        redirect_to action: "new"
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
