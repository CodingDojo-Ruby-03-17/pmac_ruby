class UsersController < ApplicationController
  def create
      user = User.new( user_params )

      if user.save
          flash[:success] = "User #{user.name} created"
          redirect_to "/users/#{user.id}"
      else
          flash[:errors] = user.errors.full_messages
          redirect_to '/'
      end
  end

  # def new
  #     @user = User.new
  # end

  def show
      @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      user = User.find(params[:id])
    if user.update_attributes( user_params )
        flash[:success] = "User #{user.name} successfully updated"
        redirect_to "/users/#{user.id}"
    else
        flash[:errors] = user.errors.full_messages
        redirect_to "/users/#{user.id}"
    end
  end

  def delete
      User.find(params[:id]).destroy
      reset_session
      flash[:success] = "User #{user.name} deleted"
      redirect_to "/users"
  end

  def index
      @users = User.all
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
