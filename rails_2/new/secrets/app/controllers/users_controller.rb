class UsersController < ApplicationController
  def create
      user = User.new( user_params )

      if user.save
          flash[:success] = ['User created']
          return redirect_to 'users/show'
      else
          flash[:errors] = user.errors.full_messages
          return redirect_to '/'
      end
  end

  def new
      @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end

  def update
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
