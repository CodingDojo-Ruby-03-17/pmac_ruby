class UsersController < ApplicationController
  def index
  end

  def new
      @user = User.new()
  end

  def create
      User.create(name: params[:name])
      redirect_to "/users/show"
  end

  def update
      @user = User.find(params[:id])
  end

  def show
      @user = User.find(params[:id])
      redirect_to '/'
  end

  def destroy
  end
end
