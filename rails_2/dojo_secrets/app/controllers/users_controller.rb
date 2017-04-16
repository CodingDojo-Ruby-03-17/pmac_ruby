class UsersController < ApplicationController
  def create
      @user = User.create( params[:name, :email, :password, :password_confirmation ])
      redirect_to '/user/#{:id}'
  end

  def show
      @users = User.all
  end

  def update
  end

  def destroy
  end

  def login_reg
      render 'index.html'
  end

end
