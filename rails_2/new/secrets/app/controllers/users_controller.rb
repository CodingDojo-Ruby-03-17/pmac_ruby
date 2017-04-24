class UsersController < ApplicationController
  def create
      user = User.new( user_params )

      if user.save
          flash[:success] = 'User #{user.name} created'
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
      @user = User.find(params[:id])
    #   flash[:success] = ['User updated']
    #   redirect_to "/users/#{user.id}"
    if user.save
        flash[:success] = 'User updated'
        redirect_to "/users/#{user.id}"
    else
        flash[:errors] = user.errors.full_messages
        redirect_to '/'
    end
  end

  def delete
  end

  def index
      @users = User.all
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
